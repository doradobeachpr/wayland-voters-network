# 🗄️ Supabase Database Setup for Wayland Voters Network

## Step 1: Create Supabase Project

1. **Go to [Supabase](https://supabase.com)** and sign up/sign in
2. **Click "New Project"**
3. **Choose your organization** or create a new one
4. **Fill in project details:**
   - Name: `wayland-voters-network`
   - Database Password: (choose a strong password)
   - Region: Choose closest to your users
5. **Click "Create new project"**
6. **Wait 2-3 minutes** for project setup to complete

## Step 2: Get Project Credentials

1. **Go to Project Settings** (gear icon in sidebar)
2. **Click on "API"** in the left menu
3. **Copy these values:**
   - **Project URL**: `https://your-project-id.supabase.co`
   - **Anon/Public Key**: `eyJ...` (long key starting with eyJ)

## Step 3: Set Up Environment Variables

1. **In your project root**, create `.env.local` file:
```bash
NEXT_PUBLIC_SUPABASE_URL=https://your-project-id.supabase.co
NEXT_PUBLIC_SUPABASE_ANON_KEY=your_anon_key_here
```

2. **For Netlify deployment**, add these in:
   - Go to Netlify Dashboard > Your Site > Site settings > Environment variables
   - Add both variables there

## Step 4: Create Database Schema

1. **In Supabase dashboard**, go to **SQL Editor**
2. **Click "New Query"**
3. **Copy and paste** the contents of `supabase/schema.sql`
4. **Click "Run"** to create the messages table

## Step 5: Import Your CSV Data

1. **Deploy your updated site** to Netlify
2. **Visit the Archive page** on your live site
3. **Click "Import 321 Messages"** button
4. **Wait for import to complete**

## Step 6: Verify Setup

1. **In Supabase dashboard**, go to **Table Editor**
2. **Click on "messages" table**
3. **You should see 321 imported messages**
4. **Test search and filtering** on your live site

## 🔧 Troubleshooting

### Common Issues:

**1. Environment Variables Not Working:**
- Make sure `.env.local` exists in project root
- Restart your development server
- For Netlify, redeploy after adding environment variables

**2. Database Connection Errors:**
- Verify your Supabase URL and key are correct
- Check that your Supabase project is active
- Ensure you're using the anon/public key, not the service role key

**3. Import Button Not Working:**
- Check browser console for errors
- Verify the CSV file exists at `/all_messages_clean3-1.csv`
- Ensure database schema was created successfully

**4. Search/Filtering Not Working:**
- Check that indexes were created in the schema
- Verify RLS policies allow read access
- Check browser console for API errors

## 📊 Database Structure

The `messages` table contains:
- `id`: Unique identifier
- `message_number`: Sequential message number
- `subject`: Email subject line
- `author`: Sender name (cleaned)
- `date`: Message date
- `display_date`: Human-readable date
- `year`, `month`, `month_index`: For filtering
- `category`: Message category
- `topics`: Array of extracted topics
- `content`: Full message content
- `created_at`: Import timestamp

## 🚀 Production Ready!

Once setup is complete, your Wayland Voters Network site will have:
- ✅ **Persistent database storage**
- ✅ **Fast search and filtering**
- ✅ **Scalable architecture**
- ✅ **Real-time performance**
- ✅ **Production-ready deployment**

Your Netlify site "bold-recipe-30093646" will now have a proper database backend!
