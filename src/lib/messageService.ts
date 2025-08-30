import { supabase, Message, MessageInsert } from './supabase'
import { sampleMessages } from '../data/sampleMessages'

// Check if Supabase is properly configured
const isSupabaseConfigured = () => {
  return process.env.NEXT_PUBLIC_SUPABASE_URL &&
         process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY &&
         process.env.NEXT_PUBLIC_SUPABASE_URL !== 'https://placeholder.supabase.co'
}

export interface MessageSearchParams {
  search?: string
  year?: number
  month?: string
  author?: string
  page?: number
  pageSize?: number
  sortBy?: 'date' | 'subject' | 'author'
  sortOrder?: 'asc' | 'desc'
}

export interface MessageSearchResult {
  messages: Message[]
  totalCount: number
  totalPages: number
  currentPage: number
}

export interface MonthData {
  month: string
  month_index: number
  count: number | null
}

export interface YearData {
  year: number
  months: MonthData[]
}

// Fetch messages with search, filtering, and pagination
export async function getMessages(params: MessageSearchParams): Promise<MessageSearchResult> {
  const {
    search,
    year,
    month,
    author,
    page = 1,
    pageSize = 25,
    sortBy = 'date',
    sortOrder = 'desc'
  } = params

  // If Supabase is not configured, use sample data
  if (!isSupabaseConfigured()) {
    console.log('Supabase not configured, using sample data')
    return getSampleMessages(params)
  }

  try {
    let query = supabase
      .from('messages')
      .select('*', { count: 'exact' })

    // Apply search filter
    if (search) {
      query = query.or(`subject.ilike.%${search}%,content.ilike.%${search}%,author.ilike.%${search}%`)
    }

    // Apply year filter
    if (year) {
      query = query.eq('year', year)
    }

    // Apply month filter
    if (month) {
      query = query.eq('month', month)
    }

    // Apply author filter
    if (author) {
      query = query.eq('author', author)
    }

    // Apply sorting
    const ascending = sortOrder === 'asc'
    query = query.order(sortBy, { ascending })

    // Apply pagination
    const startIndex = (page - 1) * pageSize
    query = query.range(startIndex, startIndex + pageSize - 1)

    const { data, error, count } = await query

    if (error) {
      console.error('Error fetching messages:', error)
      throw error
    }

    const totalPages = Math.ceil((count || 0) / pageSize)

    return {
      messages: data || [],
      totalCount: count || 0,
      totalPages,
      currentPage: page
    }
  } catch (error) {
    console.error('Database error, falling back to sample data:', error)
    return getSampleMessages(params)
  }
}

// Generate sample messages for fallback
function getSampleMessages(params: MessageSearchParams): MessageSearchResult {
  const {
    search,
    year,
    month,
    author,
    page = 1,
    pageSize = 25,
    sortBy = 'date',
    sortOrder = 'desc'
  } = params

  // Generate expanded sample data
  const allMessages: Message[] = []
  const years = [2025, 2024, 2023, 2022, 2021, 2020, 2019, 2018]
  const months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']

  years.forEach(year => {
    months.forEach((month, monthIndex) => {
      const numMessages = Math.floor(Math.random() * 8) + 1

      for (let i = 0; i < numMessages; i++) {
        const baseMessage = sampleMessages[Math.floor(Math.random() * sampleMessages.length)]
        const day = Math.floor(Math.random() * 28) + 1

        allMessages.push({
          ...baseMessage,
          id: parseInt(`${year}${monthIndex}${i}`),
          message_number: parseInt(`${year}${monthIndex}${i}`),
          date: `${year}-${String(monthIndex + 1).padStart(2, '0')}-${String(day).padStart(2, '0')}`,
          display_date: `${month} ${day}, ${year}`,
          year,
          month,
          month_index: monthIndex,
          category: 'sample',
          topics: ['general'],
          created_at: new Date().toISOString(),
          subject: i > 0 ? `${baseMessage.subject} - Update ${i}` : baseMessage.subject
        })
      }
    })
  })

  // Apply filters
  let filtered = allMessages

  if (search) {
    const searchLower = search.toLowerCase()
    filtered = filtered.filter(message =>
      message.subject.toLowerCase().includes(searchLower) ||
      message.content.toLowerCase().includes(searchLower) ||
      message.author.toLowerCase().includes(searchLower)
    )
  }

  if (year) {
    filtered = filtered.filter(message => message.year === year)
  }

  if (month) {
    filtered = filtered.filter(message => message.month === month)
  }

  if (author) {
    filtered = filtered.filter(message => message.author === author)
  }

  // Apply sorting
  filtered.sort((a, b) => {
    let compareValue = 0
    switch (sortBy) {
      case 'date':
        compareValue = new Date(a.date).getTime() - new Date(b.date).getTime()
        break
      case 'subject':
        compareValue = a.subject.localeCompare(b.subject)
        break
      case 'author':
        compareValue = a.author.localeCompare(b.author)
        break
    }
    return sortOrder === 'asc' ? compareValue : -compareValue
  })

  // Apply pagination
  const startIndex = (page - 1) * pageSize
  const endIndex = startIndex + pageSize
  const paginatedMessages = filtered.slice(startIndex, endIndex)

  return {
    messages: paginatedMessages,
    totalCount: filtered.length,
    totalPages: Math.ceil(filtered.length / pageSize),
    currentPage: page
  }
}

// Get unique authors for filter dropdown
export async function getUniqueAuthors(): Promise<string[]> {
  if (!isSupabaseConfigured()) {
    return [...new Set(sampleMessages.map(msg => msg.author))].sort()
  }

  try {
    const { data, error } = await supabase
      .from('messages')
      .select('author')
      .order('author')

    if (error) {
      console.error('Error fetching authors:', error)
      throw error
    }

    const uniqueAuthors = [...new Set(data?.map(item => item.author) || [])]
    return uniqueAuthors.sort()
  } catch (error) {
    console.error('Database error, using sample authors:', error)
    return [...new Set(sampleMessages.map(msg => msg.author))].sort()
  }
}

// Get unique years for filter dropdown
export async function getUniqueYears(): Promise<number[]> {
  if (!isSupabaseConfigured()) {
    return [2025, 2024, 2023, 2022, 2021, 2020, 2019, 2018]
  }

  try {
    const { data, error } = await supabase
      .from('messages')
      .select('year')
      .order('year', { ascending: false })

    if (error) {
      console.error('Error fetching years:', error)
      throw error
    }

    const uniqueYears = [...new Set(data?.map(item => item.year) || [])]
    return uniqueYears.sort((a, b) => b - a)
  } catch (error) {
    console.error('Database error, using sample years:', error)
    return [2025, 2024, 2023, 2022, 2021, 2020, 2019, 2018]
  }
}

// Get message statistics
export async function getMessageStats() {
  const { count: totalMessages } = await supabase
    .from('messages')
    .select('*', { count: 'exact', head: true })

  const { data: latestMessage } = await supabase
    .from('messages')
    .select('display_date')
    .order('date', { ascending: false })
    .limit(1)

  const { data: oldestMessage } = await supabase
    .from('messages')
    .select('year')
    .order('date', { ascending: true })
    .limit(1)

  return {
    totalMessages: totalMessages || 0,
    latestDate: latestMessage?.[0]?.display_date || 'Unknown',
    foundingYear: oldestMessage?.[0]?.year || 2004
  }
}

// Insert messages in bulk (for CSV import)
export async function insertMessages(messages: MessageInsert[]): Promise<void> {
  const { error } = await supabase
    .from('messages')
    .insert(messages)

  if (error) {
    console.error('Error inserting messages:', error)
    throw error
  }
}

// Clear all messages (for fresh import)
export async function clearAllMessages(): Promise<void> {
  const { error } = await supabase
    .from('messages')
    .delete()
    .neq('id', 0) // Delete all rows

  if (error) {
    console.error('Error clearing messages:', error)
    throw error
  }
}

// Get archived messages grouped by year and month for homepage display
export async function getArchivedMessagesByYear(): Promise<YearData[]> {
  const months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']

  // If Supabase is not configured, use sample data
  if (!isSupabaseConfigured()) {
    console.log('Supabase not configured, using sample archive data')
    return getSampleArchiveData()
  }

  try {
    // Get message counts grouped by year and month
    const { data, error } = await supabase
      .from('messages')
      .select('year, month, month_index')
      .order('year', { ascending: false })
      .order('month_index', { ascending: true })

    if (error) {
      console.error('Error fetching archive data:', error)
      throw error
    }

    // Group messages by year and month
    const messageGroups: Record<number, Record<string, number>> = {}

    data?.forEach(message => {
      if (!messageGroups[message.year]) {
        messageGroups[message.year] = {}
      }
      if (!messageGroups[message.year][message.month]) {
        messageGroups[message.year][message.month] = 0
      }
      messageGroups[message.year][message.month]++
    })

    // Create year data structure
    const years: YearData[] = []

    // Get all years from 2025 down to the earliest year in database, minimum 2004
    const allYears = Object.keys(messageGroups).map(Number).sort((a, b) => b - a)
    const startYear = Math.max(2025, allYears[0] || 2025)
    const endYear = Math.min(2004, allYears[allYears.length - 1] || 2004)

    for (let year = startYear; year >= endYear; year--) {
      const yearMonths: MonthData[] = months.map((month, index) => ({
        month,
        month_index: index,
        count: messageGroups[year]?.[month] || null
      }))

      years.push({
        year,
        months: yearMonths
      })
    }

    return years

  } catch (error) {
    console.error('Database error, falling back to sample archive data:', error)
    return getSampleArchiveData()
  }
}

// Generate sample archive data for fallback
function getSampleArchiveData(): YearData[] {
  const months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']

  // Sample data - represents message counts by year and month
  const sampleData: Record<number, (number | null)[]> = {
    2025: [null, 3, 3, 4, 3, 2, 3, 1, 4, 3, 8, 7],
    2024: [12, 5, 11, 11, 10, 13, 8, 8, 20, 14, 17, 10],
    2023: [1, 1, 2, 1, 1, 1, 1, 3, 3, 1, 2, 4],
    2022: [1, 2, 6, 10, 3, 1, 1, 5, 4, 1, 6, 1],
    2021: [2, 6, 5, 3, 3, 7, 2, 2, 3, 8, 14, 2],
    2020: [2, 7, 5, 6, 8, 4, 5, 7, 11, 6, 8, 5],
  }

  const years: YearData[] = []

  for (let year = 2025; year >= 2004; year--) {
    const yearData = sampleData[year] || Array(12).fill(null).map(() => Math.floor(Math.random() * 15) + 1)
    years.push({
      year,
      months: months.map((month, index) => ({
        month,
        month_index: index,
        count: year === 2025 && index === 0 ? null : yearData[index] || Math.floor(Math.random() * 15) + 1
      }))
    })
  }

  return years
}

// Get messages for a specific month and year (for homepage dialog)
export async function getMessagesForMonth(year: number, month: string): Promise<Message[]> {
  if (!isSupabaseConfigured()) {
    // Return some sample messages for the selected month
    return sampleMessages.slice(0, 3).map((message, index) => ({
      ...message,
      id: index + 1,
      message_number: index + 1,
      year,
      month,
      month_index: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'].indexOf(month),
      date: `${year}-${String(['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'].indexOf(month) + 1).padStart(2, '0')}-${String(Math.floor(Math.random() * 28) + 1).padStart(2, '0')}`,
      display_date: `${month} ${Math.floor(Math.random() * 28) + 1}, ${year}`,
      category: 'sample',
      topics: ['general'],
      created_at: new Date().toISOString()
    }))
  }

  try {
    const { data, error } = await supabase
      .from('messages')
      .select('*')
      .eq('year', year)
      .eq('month', month)
      .order('date', { ascending: false })
      .limit(5)

    if (error) {
      console.error('Error fetching messages for month:', error)
      throw error
    }

    return data || []

  } catch (error) {
    console.error('Database error, returning sample messages:', error)
    return sampleMessages.slice(0, 3)
  }
}
