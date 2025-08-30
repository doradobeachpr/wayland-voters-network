# Wayland Voters Network

A modern, responsive web application for the Wayland Voters Network community, providing access to historical message archives and community information spanning from February 24, 2004 to present.

## 🌐 Live Site

**🔗 [https://votersnetwork.netlify.app](https://votersnetwork.netlify.app)**

## ✨ Features

- **📚 Complete Message Archive**: Browse 1,460+ historical messages from 2004-2025
- **🔍 Advanced Search**: Full-text search across subjects, content, and authors
- **📅 Interactive Calendar**: Visual calendar showing message counts by month/year
- **🎛️ Smart Filtering**: Filter by year, month, author, and content
- **📱 Responsive Design**: Optimized for desktop, tablet, and mobile devices
- **⚡ Fast Performance**: Static site generation with instant search results
- **🗄️ Database Integration**: Supabase PostgreSQL backend for scalable data storage

## 🛠️ Technology Stack

- **Framework**: Next.js 15.3.2 with App Router
- **Language**: TypeScript
- **Styling**: Tailwind CSS + shadcn/ui components
- **Database**: Supabase (PostgreSQL)
- **Package Manager**: Bun
- **Deployment**: Netlify (Static Site)
- **CI/CD**: GitHub Actions

## 🚀 Quick Start

### Prerequisites

- [Bun](https://bun.sh/) (latest version)
- [Node.js](https://nodejs.org/) 18+ (for compatibility)
- Supabase account (for database features)

### Local Development

1. **Clone the repository**
   ```bash
   git clone https://github.com/doradobeachpr/wayland-voters-network.git
   cd wayland-voters-network
   ```

2. **Install dependencies**
   ```bash
   bun install
   ```

3. **Set up environment variables**
   ```bash
   cp .env.example .env.local
   ```

   Edit `.env.local` with your Supabase credentials:
   ```bash
   NEXT_PUBLIC_SUPABASE_URL=your_supabase_url
   NEXT_PUBLIC_SUPABASE_ANON_KEY=your_supabase_anon_key
   ```

4. **Run the development server**
   ```bash
   bun run dev
   ```

5. **Open [http://localhost:3000](http://localhost:3000)**

## 📖 Documentation

- **[Supabase Setup Guide](./SUPABASE_SETUP.md)** - Complete database configuration
- **[GitHub Actions Setup](./GITHUB_ACTIONS_SETUP.md)** - Automatic deployment configuration
- **[Deployment Status](./DEPLOYMENT_STATUS.md)** - Current deployment information

## 🏗️ Project Structure

```
wvn/
├── src/
│   ├── app/                    # Next.js App Router pages
│   │   ├── archive/           # Message archive page
│   │   ├── about/             # About page
│   │   └── page.tsx           # Homepage
│   ├── components/ui/         # Reusable UI components
│   ├── lib/                   # Utility functions
│   │   ├── supabase.ts       # Database client
│   │   └── messageService.ts  # Data fetching logic
│   └── data/                  # Sample data and imports
├── supabase/                  # Database schema and migrations
├── .github/workflows/         # GitHub Actions CI/CD
└── public/                    # Static assets
```

## 🚀 Deployment

### Automatic Deployment (Recommended)

This project uses GitHub Actions for automatic deployment:

1. **Push to main branch** → Automatic build and deploy to Netlify
2. **Create Pull Request** → Automatic preview deployment
3. **Merge PR** → Automatic production deployment

See [GitHub Actions Setup Guide](./GITHUB_ACTIONS_SETUP.md) for configuration details.

### Manual Deployment

```bash
# Build the application
bun run build

# Deploy to Netlify (requires Netlify CLI)
netlify deploy --prod --dir=out
```

## 🗄️ Database

The application uses Supabase for message storage and search:

- **Messages Table**: Stores all historical messages with full-text search
- **Optimized Queries**: Indexed for fast search and filtering
- **Row Level Security**: Configured for safe public access

See [Supabase Setup Guide](./SUPABASE_SETUP.md) for detailed configuration.

## 🧪 Development Scripts

```bash
# Development server
bun run dev

# Build for production
bun run build

# Type checking
bun run type-check

# Linting
bun run lint

# Code formatting
bun run format
```

## 🔧 Configuration

### Environment Variables

| Variable | Description | Required |
|----------|-------------|----------|
| `NEXT_PUBLIC_SUPABASE_URL` | Supabase project URL | Yes* |
| `NEXT_PUBLIC_SUPABASE_ANON_KEY` | Supabase anonymous key | Yes* |

*Required for database features. App works with sample data if not configured.

### Build Configuration

- **Output**: Static export (`next.config.js`)
- **Image Optimization**: Disabled for static hosting
- **Trailing Slash**: Enabled for compatibility

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch: `git checkout -b feature/amazing-feature`
3. Commit changes: `git commit -m 'Add amazing feature'`
4. Push to branch: `git push origin feature/amazing-feature`
5. Open a Pull Request

## 📝 License

This project is open source and available under the [MIT License](LICENSE).

## 📞 Support

- **Live Site**: [votersnetwork.netlify.app](https://votersnetwork.netlify.app)
- **Repository**: [GitHub Issues](https://github.com/doradobeachpr/wayland-voters-network/issues)
- **Community**: Wayland Voters Network

## 🎯 Mission

**The WVN Vision**: A Wayland that promotes respect for citizens of all ages, backgrounds, economic conditions, and household characteristics; whose government is effective, efficient, responsible to, and representative of all residents; and where people in all stages of life thrive.

**The WVN Mission**: To ensure that Town of Wayland voters are informed about Town decisions that will directly affect them, and encourage voter participation. We believe that an informed electorate will help make Wayland a better place for everyone.

---

*Launched February 24, 2004 • Serving the Wayland community for 20+ years*
