# GitHub Actions Setup Guide

This guide will help you set up automatic deployment to Netlify using GitHub Actions. Every time you push code to the `main` branch, your site will automatically build and deploy.

## 🚀 What This Setup Provides

- **Automatic Deployment**: Push to `main` branch → Build → Deploy to Netlify
- **Pull Request Previews**: Every PR gets a preview deployment
- **Build Status Checks**: Automatic testing and linting on every commit
- **Deploy Comments**: Bot comments with deployment URLs on PRs

## 📋 Prerequisites

Before setting up GitHub Actions, you need:

1. Your code already on GitHub ✅ (Already done!)
2. A Netlify account with your site deployed ✅ (Already done!)
3. Access to your repository settings
4. Netlify authentication tokens (we'll get these)

## 🔑 Step 1: Get Netlify Tokens

### 1.1 Get Netlify Site ID

1. Go to [Netlify Dashboard](https://app.netlify.com)
2. Click on your site: **bold-recipe-30093646** (votersnetwork.netlify.app)
3. Go to **Site Settings** → **General**
4. Copy the **Site ID** (it looks like: `1a2b3c4d-5e6f-7g8h-9i0j-k1l2m3n4o5p6`)

### 1.2 Create Netlify Access Token

1. Go to [Netlify User Settings](https://app.netlify.com/user/applications)
2. Scroll down to **Personal access tokens**
3. Click **New access token**
4. Name it: `GitHub Actions - Wayland Voters Network`
5. Click **Generate token**
6. **IMPORTANT**: Copy the token immediately (you won't see it again!)

## 🔧 Step 2: Configure GitHub Secrets

### 2.1 Add Repository Secrets

1. Go to your GitHub repository: https://github.com/doradobeachpr/wayland-voters-network
2. Click **Settings** tab
3. In the left sidebar, click **Secrets and variables** → **Actions**
4. Click **New repository secret** for each of these:

#### Required Secrets:

| Secret Name | Value | Description |
|-------------|-------|-------------|
| `NETLIFY_AUTH_TOKEN` | Your Netlify access token | For deploying to Netlify |
| `NETLIFY_SITE_ID` | Your Netlify site ID | Identifies your site |
| `NEXT_PUBLIC_SUPABASE_URL` | Your Supabase URL | Database connection |
| `NEXT_PUBLIC_SUPABASE_ANON_KEY` | Your Supabase anon key | Database authentication |

### 2.2 How to Add Each Secret

For each secret:
1. Click **New repository secret**
2. Enter the **Name** (exactly as shown above)
3. Enter the **Secret** value
4. Click **Add secret**

## 📄 Step 3: Workflow Files

The following workflow files have been created in `.github/workflows/`:

### `deploy.yml` - Main Deployment Workflow
- Triggers on pushes to `main` branch
- Builds the Next.js application
- Deploys to Netlify production
- Comments deployment URLs on PRs

### `build-test.yml` - Build & Test Workflow
- Runs on all PRs and pushes
- Type checking with TypeScript
- Linting with ESLint
- Build testing with placeholder environment

## 🔄 Step 4: Test the Setup

### 4.1 Test Automatic Deployment

1. Make any small change to your code (e.g., update README.md)
2. Commit and push to `main` branch:
   ```bash
   git add .
   git commit -m "Test GitHub Actions deployment"
   git push origin main
   ```
3. Go to **Actions** tab in your GitHub repository
4. Watch the workflow run and deploy automatically!

### 4.2 Test Pull Request Preview

1. Create a new branch:
   ```bash
   git checkout -b test-pr-preview
   ```
2. Make a small change and push:
   ```bash
   git add .
   git commit -m "Test PR preview deployment"
   git push origin test-pr-preview
   ```
3. Create a Pull Request on GitHub
4. Watch as a preview deployment is created automatically!

## 📊 What Happens During Deployment

1. **Checkout Code**: Downloads your latest code
2. **Setup Bun**: Installs Bun package manager
3. **Cache Dependencies**: Speeds up future builds
4. **Install Dependencies**: Runs `bun install`
5. **Lint Code**: Checks code quality
6. **Build Application**: Runs `bun run build` with environment variables
7. **Deploy to Netlify**: Uploads the `out/` folder to Netlify
8. **Comment Results**: Posts deployment URL as a comment

## ⚠️ Important Security Notes

- **Never commit secrets to code**: Environment variables are safely stored in GitHub Secrets
- **Supabase keys are protected**: Only the anon key is used (safe for client-side)
- **Netlify tokens are encrypted**: GitHub encrypts all repository secrets
- **Public repository**: Your code is public, but secrets remain private

## 🔍 Monitoring & Troubleshooting

### Check Deployment Status
- **GitHub**: Go to **Actions** tab to see workflow runs
- **Netlify**: Go to **Deploys** tab to see deployment history

### Common Issues & Solutions

**Build fails with environment variables:**
- Verify all secrets are added with correct names
- Check Supabase URL and key are valid

**Netlify deployment fails:**
- Verify `NETLIFY_AUTH_TOKEN` is correct
- Verify `NETLIFY_SITE_ID` matches your site

**Workflow doesn't trigger:**
- Ensure workflow files are in `.github/workflows/` directory
- Check branch name is exactly `main`

## 🎉 Benefits of This Setup

- **Zero Manual Deployment**: Push code → Automatic deployment
- **Preview Deployments**: Test changes before merging
- **Build Validation**: Catch errors before they reach production
- **Team Collaboration**: Multiple developers can contribute safely
- **Deployment History**: Track all changes and rollback if needed

## 📞 Getting Help

If you encounter issues:

1. Check the **Actions** tab for detailed error logs
2. Verify all secrets are correctly configured
3. Check Netlify dashboard for deployment errors
4. Review this guide for any missed steps

Once configured, your development workflow becomes:
```
Code → Commit → Push → Automatic Build → Automatic Deploy → Live! 🚀
```
