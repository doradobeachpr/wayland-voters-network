// CSV Import utility for Wayland Voters Network messages
import { RealMessage } from './realMessages';

interface CSVRow {
  Subject: string;
  From: string;
  Date: string;
  Body_Clean: string;
}

// Configuration for complete dataset import - all 321 rows
const IMPORT_CONFIG = {
  // Clean import from all_messages_clean3-1.csv only
  mode: 'single' as 'sample' | 'single' | 'all',
  maxMessagesPerFile: 500, // Set higher than 321 to ensure all rows are imported
  files: {
    sample: ['/sample_1000_messages.csv'],
    single: ['/all_messages_clean3-1.csv'], // Now using file 1 as requested
    all: [
      '/all_messages_clean3-1.csv',
      '/all_messages_clean3-2.csv',
      '/all_messages_clean3-3.csv',
      '/all_messages_clean3-4.csv',
      '/all_messages_clean3-5.csv'
    ]
  }
};

export const parseCSVData = async (): Promise<RealMessage[]> => {
  try {
    const filesToProcess = IMPORT_CONFIG.files[IMPORT_CONFIG.mode];
    console.log(`Starting CSV import in '${IMPORT_CONFIG.mode}' mode with ${filesToProcess.length} file(s)...`);

    const allMessages: RealMessage[] = [];
    let totalProcessed = 0;
    let successfulFiles = 0;

    // Process each CSV file
    for (let i = 0; i < filesToProcess.length; i++) {
      const fileName = filesToProcess[i];
      console.log(`Loading file ${i + 1}/${filesToProcess.length}: ${fileName}`);

      try {
        // Add timeout to prevent hanging
        const controller = new AbortController();
        const timeoutId = setTimeout(() => controller.abort(), 30000); // 30 second timeout

        const response = await fetch(fileName, {
          signal: controller.signal,
          headers: {
            'Cache-Control': 'no-cache'
          }
        });
        clearTimeout(timeoutId);

        if (!response.ok) {
          console.warn(`Failed to load ${fileName}: ${response.status} ${response.statusText}`);
          continue;
        }

        const csvText = await response.text();
        if (!csvText || csvText.length < 100) {
          console.warn(`File ${fileName} appears to be empty or too small`);
          continue;
        }

        const messages = parseCsvText(csvText, totalProcessed, IMPORT_CONFIG.maxMessagesPerFile);

        if (messages.length > 0) {
          console.log(`Successfully processed ${messages.length} messages from ${fileName} (expected ~321 rows from CSV)`);
          allMessages.push(...messages);
          totalProcessed += messages.length;
          successfulFiles++;

          // Progress update for user
          if (i === 0) {
            console.log(`Successfully loaded first batch: ${messages.length} messages`);
          }
        } else {
          console.warn(`No valid messages found in ${fileName}`);
        }

      } catch (error) {
        if (error instanceof Error && error.name === 'AbortError') {
          console.error(`Timeout loading ${fileName}`);
        } else {
          console.error(`Error processing ${fileName}:`, error);
        }
        continue;
      }
    }

    console.log(`Import complete: ${allMessages.length} messages from ${successfulFiles}/${filesToProcess.length} files`);

    if (allMessages.length === 0) {
      console.warn('No messages were imported, using fallback data');
      return generateFallbackMessages();
    }

    // Remove duplicates based on subject + date + author
    const uniqueMessages = removeDuplicates(allMessages);
    console.log(`Unique messages after deduplication: ${uniqueMessages.length}`);

    // Sort by date (newest first)
    const sortedMessages = uniqueMessages.sort((a, b) =>
      new Date(b.date).getTime() - new Date(a.date).getTime()
    );

    return sortedMessages;

  } catch (error) {
    console.error('Critical error in parseCSVData:', error);
    return generateFallbackMessages();
  }
};

const removeDuplicates = (messages: RealMessage[]): RealMessage[] => {
  const seen = new Set<string>();
  return messages.filter(message => {
    // Create a unique key based on subject, date, and author
    const key = `${message.subject.toLowerCase().trim()}_${message.date}_${message.author.toLowerCase().trim()}`;
    if (seen.has(key)) {
      return false;
    }
    seen.add(key);
    return true;
  });
};

export const parseCsvText = (csvText: string, startingMessageNumber: number = 0, maxMessages?: number): RealMessage[] => {
  const lines = csvText.split('\n');
  if (lines.length < 2) return [];

  const messages: RealMessage[] = [];
  let messageNumber = startingMessageNumber + 1;
  let processedCount = 0;

  // Skip header row
  for (let i = 1; i < lines.length; i++) {
    // Respect maxMessages limit for performance
    if (maxMessages && processedCount >= maxMessages) {
      console.log(`Reached max limit of ${maxMessages} messages for this file`);
      break;
    }

    const line = lines[i].trim();
    if (!line) continue;

    try {
      const row = parseCSVLine(line);
      if (row.length >= 4 && row[0] && row[1] && row[2]) {
        const message = convertToRealMessage({
          Subject: row[0],
          From: row[1],
          Date: row[2],
          Body_Clean: row[3] || ''
        }, messageNumber++);

        messages.push(message);
        processedCount++;
      }
    } catch (error) {
      // Skip problematic rows
      continue;
    }
  }

  return messages;
};

const parseCSVLine = (line: string): string[] => {
  const result: string[] = [];
  let current = '';
  let inQuotes = false;

  for (let i = 0; i < line.length; i++) {
    const char = line[i];

    if (char === '"') {
      inQuotes = !inQuotes;
    } else if (char === ',' && !inQuotes) {
      result.push(current.trim());
      current = '';
    } else {
      current += char;
    }
  }

  result.push(current.trim());
  return result.map(field => field.replace(/^"|"$/g, ''));
};

const convertToRealMessage = (row: CSVRow, messageNumber: number): RealMessage => {
  // Parse the date
  let parsedDate: Date;
  try {
    parsedDate = new Date(row.Date);
    // Validate date
    if (isNaN(parsedDate.getTime())) {
      parsedDate = new Date(); // fallback to current date
    }
  } catch {
    parsedDate = new Date();
  }

  const year = parsedDate.getFullYear();
  const month = parsedDate.getMonth();
  const monthNames = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];

  // Extract author from email format
  let author = row.From || 'Unknown';
  if (author.includes('<') && author.includes('>')) {
    // Extract name before email address
    const nameMatch = author.match(/^[^<]*(?=<)/);
    if (nameMatch) {
      author = nameMatch[0].replace(/"/g, '').trim();
    }
  }

  // Clean up author name
  author = author.replace(/^["'\s]+|["'\s]+$/g, '');
  if (!author || author === '""' || author === "''") {
    author = 'Wayland Voters Network';
  }

  // Clean subject
  let subject = row.Subject || 'No Subject';
  subject = subject.replace(/^["'\s]+|["'\s]+$/g, '');

  return {
    id: `msg_${messageNumber}`,
    messageNumber,
    subject: subject,
    author: author,
    date: parsedDate.toISOString().split('T')[0],
    displayDate: parsedDate.toLocaleDateString('en-US', {
      year: 'numeric',
      month: 'short',
      day: 'numeric'
    }),
    year,
    month: monthNames[month],
    monthIndex: month,
    category: 'imported',
    topics: extractTopics(subject, row.Body_Clean),
    content: cleanContent(row.Body_Clean),
    url: undefined
  };
};

const extractTopics = (subject: string, content: string): string[] => {
  const topics: string[] = [];
  const text = (subject + ' ' + content).toLowerCase();

  // Define topic keywords
  const topicMap = {
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
  };

  for (const [topic, keywords] of Object.entries(topicMap)) {
    if (keywords.some(keyword => text.includes(keyword))) {
      topics.push(topic);
    }
  }

  return topics.length > 0 ? topics : ['general'];
};

const cleanContent = (content: string): string => {
  if (!content) return '';

  return content
    .replace(/\\n/g, '\n')
    .replace(/\\"/g, '"')
    .replace(/^\s*["']|["']\s*$/g, '')
    .replace(/\r\n/g, '\n')
    .replace(/\r/g, '\n')
    .trim();
};

const generateFallbackMessages = (): RealMessage[] => {
  // Return empty array for clean dataset - no fallback messages
  console.log('CSV import failed - returning empty dataset for clean import');
  return [];
};

// Export configuration for external access
export const getImportConfig = () => IMPORT_CONFIG;

// Function to update import mode (for future use)
export const setImportMode = (mode: 'sample' | 'single' | 'all') => {
  IMPORT_CONFIG.mode = mode;
};
