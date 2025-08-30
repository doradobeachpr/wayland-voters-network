#!/usr/bin/env python3
"""
Generate SQL INSERT statements from all_messages_clean3-1.csv
Creates a SQL script to populate the messages table with 321 rows
"""

import csv
import re
from datetime import datetime

def clean_text(text):
    """Clean and escape text for SQL"""
    if not text:
        return ""

    # Remove leading/trailing quotes and whitespace
    text = text.strip()
    if text.startswith('"') and text.endswith('"'):
        text = text[1:-1]

    # Escape single quotes for SQL
    text = text.replace("'", "''")

    # Clean up newlines
    text = text.replace('\\n', '\n').replace('\\r', '')

    return text

def extract_author(from_field):
    """Extract clean author name from email field"""
    if not from_field:
        return "Wayland Voters Network"

    # Extract name before email if format is "Name <email>"
    if '<' in from_field and '>' in from_field:
        name_match = re.search(r'^([^<]+)', from_field)
        if name_match:
            author = name_match.group(1).strip().strip('"')
            if author:
                return clean_text(author)

    # Clean up the from field
    author = clean_text(from_field)
    if not author or author in ['""', "''"]:
        return "Wayland Voters Network"

    return author

def parse_date(date_str):
    """Parse date string into SQL format"""
    if not date_str:
        return "2019-01-01", "Jan 1, 2019", 2019, "Jan", 0

    try:
        # Parse date like "Wed, 23 Oct 2019 14:58:49 -0700"
        date_part = date_str.split(',', 1)[1].strip() if ',' in date_str else date_str
        date_part = date_part.split(' -')[0].strip()  # Remove timezone
        date_part = date_part.split(' +')[0].strip()  # Remove timezone

        # Try different date formats
        for fmt in ["%d %b %Y %H:%M:%S", "%d %b %Y", "%Y-%m-%d", "%m/%d/%Y"]:
            try:
                parsed_date = datetime.strptime(date_part, fmt)
                break
            except ValueError:
                continue
        else:
            # If no format works, try parsing just the year
            year_match = re.search(r'(\d{4})', date_str)
            if year_match:
                year = int(year_match.group(1))
                parsed_date = datetime(year, 1, 1)
            else:
                parsed_date = datetime(2019, 1, 1)

        sql_date = parsed_date.strftime("%Y-%m-%d")
        display_date = parsed_date.strftime("%b %d, %Y")
        year = parsed_date.year
        month = parsed_date.strftime("%b")
        month_index = parsed_date.month - 1

        return sql_date, display_date, year, month, month_index

    except Exception as e:
        print(f"Error parsing date '{date_str}': {e}")
        return "2019-01-01", "Jan 1, 2019", 2019, "Jan", 0

def extract_topics(subject, content):
    """Extract topics from subject and content"""
    text = (subject + " " + content).lower()

    topic_keywords = {
        'budget': ['budget', 'fiscal', 'tax', 'levy', 'finance', 'money', 'cost'],
        'election': ['election', 'candidate', 'vote', 'ballot', 'campaign'],
        'zoning': ['zoning', 'planning', 'development', 'building', 'permit'],
        'school': ['school', 'education', 'student', 'pta', 'teacher', 'wayland high'],
        'safety': ['police', 'fire', 'emergency', 'safety', 'crime'],
        'environment': ['environment', 'climate', 'green', 'conservation', 'water'],
        'meeting': ['meeting', 'agenda', 'minutes', 'discussion', 'town meeting'],
        'infrastructure': ['water', 'sewer', 'road', 'infrastructure', 'repair'],
        'transportation': ['traffic', 'transit', 'parking', 'route', 'street'],
        'health': ['health', 'medical', 'covid', 'flu', 'vaccine'],
        'newsletter': ['newsletter', 'wvn', 'wayland voters', 'alert']
    }

    topics = []
    for topic, keywords in topic_keywords.items():
        if any(keyword in text for keyword in keywords):
            topics.append(topic)

    return topics if topics else ['general']

def generate_sql():
    """Generate SQL INSERT statements from CSV"""

    sql_lines = [
        "-- Wayland Voters Network Messages Data",
        "-- Generated from all_messages_clean3-1.csv",
        "-- Use this script to populate the messages table",
        "",
        "-- Clear existing data",
        "DELETE FROM messages;",
        "",
        "-- Reset sequence (PostgreSQL)",
        "ALTER SEQUENCE messages_id_seq RESTART WITH 1;",
        "",
        "-- Insert messages",
    ]

    message_number = 1
    rows_processed = 0

    try:
        with open('public/all_messages_clean3-1.csv', 'r', encoding='utf-8') as file:
            # Read the file content and handle potential CSV parsing issues
            content = file.read()
            lines = content.split('\n')

            # Skip header
            for i in range(1, len(lines)):
                if rows_processed >= 321:  # Limit to 321 rows as requested
                    break

                line = lines[i].strip()
                if not line:
                    continue

                try:
                    # Parse CSV line manually to handle embedded quotes and commas
                    fields = []
                    current_field = ""
                    in_quotes = False

                    for char in line:
                        if char == '"':
                            in_quotes = not in_quotes
                        elif char == ',' and not in_quotes:
                            fields.append(current_field.strip())
                            current_field = ""
                        else:
                            current_field += char

                    fields.append(current_field.strip())

                    if len(fields) >= 4:
                        subject = clean_text(fields[0])
                        from_field = fields[1]
                        date_field = fields[2]
                        content = clean_text(fields[3])

                        # Process fields
                        author = extract_author(from_field)
                        sql_date, display_date, year, month, month_index = parse_date(date_field)
                        topics = extract_topics(subject, content)
                        topics_sql = "'{" + ",".join(topics) + "}'"

                        # Create SQL INSERT statement
                        sql_insert = f"""INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    {message_number},
    '{subject}',
    '{author}',
    '{sql_date}',
    '{display_date}',
    {year},
    '{month}',
    {month_index},
    'imported',
    {topics_sql},
    '{content}'
);"""

                        sql_lines.append(sql_insert)
                        sql_lines.append("")

                        message_number += 1
                        rows_processed += 1

                        if rows_processed % 50 == 0:
                            print(f"Processed {rows_processed} rows...")

                except Exception as e:
                    print(f"Error processing line {i}: {e}")
                    continue

    except FileNotFoundError:
        print("Error: all_messages_clean3-1.csv not found in public/ directory")
        return

    # Add final comments
    sql_lines.extend([
        f"-- Total messages inserted: {rows_processed}",
        f"-- Generated on: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}",
    ])

    # Write SQL file
    with open('supabase/insert_messages.sql', 'w', encoding='utf-8') as f:
        f.write('\n'.join(sql_lines))

    print(f"\n✅ SQL script generated successfully!")
    print(f"📄 File: supabase/insert_messages.sql")
    print(f"📊 Messages processed: {rows_processed}")
    print(f"\nTo use this script:")
    print(f"1. Run the schema.sql first to create the table")
    print(f"2. Run insert_messages.sql to populate with data")

if __name__ == "__main__":
    generate_sql()
