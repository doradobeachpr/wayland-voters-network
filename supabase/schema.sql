-- Wayland Voters Network Messages Table
-- Run this SQL in your Supabase SQL Editor

CREATE TABLE IF NOT EXISTS messages (
  id BIGSERIAL PRIMARY KEY,
  message_number INTEGER NOT NULL,
  subject TEXT NOT NULL,
  author TEXT NOT NULL,
  date DATE NOT NULL,
  display_date TEXT NOT NULL,
  year INTEGER NOT NULL,
  month TEXT NOT NULL,
  month_index INTEGER NOT NULL,
  category TEXT NOT NULL DEFAULT 'imported',
  topics TEXT[] NOT NULL DEFAULT '{}',
  content TEXT,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Create indexes for better query performance
CREATE INDEX IF NOT EXISTS idx_messages_date ON messages(date DESC);
CREATE INDEX IF NOT EXISTS idx_messages_year ON messages(year);
CREATE INDEX IF NOT EXISTS idx_messages_month ON messages(month);
CREATE INDEX IF NOT EXISTS idx_messages_author ON messages(author);
CREATE INDEX IF NOT EXISTS idx_messages_subject ON messages USING gin(to_tsvector('english', subject));
CREATE INDEX IF NOT EXISTS idx_messages_content ON messages USING gin(to_tsvector('english', content));

-- Enable Row Level Security (optional, but recommended)
ALTER TABLE messages ENABLE ROW LEVEL SECURITY;

-- Create policy to allow read access to all users
CREATE POLICY "Allow read access to messages" ON messages
  FOR SELECT USING (true);

-- Create policy to allow insert access (for CSV import)
CREATE POLICY "Allow insert access to messages" ON messages
  FOR INSERT WITH CHECK (true);

-- Create policy to allow delete access (for clearing data)
CREATE POLICY "Allow delete access to messages" ON messages
  FOR DELETE USING (true);
