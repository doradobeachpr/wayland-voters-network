import { createClient } from '@supabase/supabase-js'

// Supabase configuration for Wayland Voters Network
const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL || 'https://placeholder.supabase.co'
const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY || 'placeholder-key'

export const supabase = createClient(supabaseUrl, supabaseAnonKey)

// Database types for TypeScript
export interface Message {
  id: number
  message_number: number
  subject: string
  author: string
  date: string
  display_date: string
  year: number
  month: string
  month_index: number
  category: string
  topics: string[]
  content: string
  created_at: string
}

export interface MessageInsert {
  message_number: number
  subject: string
  author: string
  date: string
  display_date: string
  year: number
  month: string
  month_index: number
  category: string
  topics: string[]
  content: string
}
