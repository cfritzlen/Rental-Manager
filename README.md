# Rental Management System

A professional web application for managing rental properties, lease agreements, and tenant information.

## Features

- 📊 **Dashboard** - Track active leases, properties, and upcoming renewals
- 📝 **Lease Creation** - Auto-calculate rent increases based on lease type
- 💰 **Smart Calculations** - Automatic rent calculation with configurable increases
- 🐾 **Pet Tracking** - Monitor pet fees and counts
- 📄 **PDF Generation** - Download lease PDFs for DocuSign
- 🔍 **Search & Filter** - Find leases quickly by tenant or property
- 💾 **Database Storage** - All data stored securely in Supabase

## Lease Types & Rent Increases

- **Month-to-Month**: 20% increase
- **12 Months**: 8% increase  
- **24 Months**: 5% increase

## Setup Instructions

### 1. Set Up Supabase Database

1. Go to [Supabase](https://supabase.com) and create an account (or log in)
2. Create a new project (or use existing)
3. Go to **SQL Editor** in the left sidebar
4. Click **New Query**
5. Copy and paste the contents of `setup-database.sql`
6. Click **Run** to create the leases table

### 2. Configure Your Database Connection

1. In Supabase, go to **Settings** → **API**
2. Copy your **Project URL** and **anon/public key**
3. Open `index.html` in a text editor
4. Find these lines (around line 430):
   ```javascript
   const SUPABASE_URL = 'YOUR_SUPABASE_URL_HERE';
   const SUPABASE_KEY = 'YOUR_SUPABASE_KEY_HERE';
   ```
5. Replace with your actual URL and key
6. Save the file

### 3. Host on GitHub Pages (Access from Any Device)

1. Create a new repository on GitHub
2. Upload all files from this folder
3. Go to **Settings** → **Pages**
4. Under "Source", select **main** branch
5. Click **Save**
6. Your app will be live at: `https://YOUR-USERNAME.github.io/REPO-NAME/`

### 4. Alternative: Run Locally

Just open `index.html` in any web browser. No server needed!

## How to Use

### Create a New Lease

1. Click **"New Lease"** in the navigation
2. Fill out tenant information
3. Enter property address
4. Select lease type (this auto-calculates rent increase)
5. Enter base rent amount
6. Add any deposits, pet info, or notes
7. Click **"Save & Generate PDF"**
8. PDF downloads automatically - upload to DocuSign for signatures

### View All Leases

- Click **"All Leases"** to see complete list
- Use search bar to filter by tenant or property
- Status badges show: Active, Expiring Soon, or Expired
- Click **"PDF"** button to regenerate any lease PDF

### Dashboard

- Overview of total properties and active leases
- See leases expiring in next 30 days
- Total monthly revenue across all properties

## Files

- `index.html` - Main application (single-page app)
- `setup-database.sql` - Database schema for Supabase
- `README.md` - This file

## Tech Stack

- Pure HTML/CSS/JavaScript (no frameworks needed)
- Supabase for database
- jsPDF for PDF generation
- GitHub Pages for hosting

## Security Note

The app uses Supabase's anon/public key, which is safe for client-side apps. Row Level Security (RLS) is enabled in the database setup script.

For production use with multiple users, consider adding authentication.

## Cost

- **This App**: FREE
- **Supabase**: FREE tier (up to 500MB database, 2GB bandwidth)
- **GitHub Pages**: FREE
- **DocuSign**: ~$25/month (for e-signatures)

**Total: $25/month** (vs $576/year for GoForms)

## Future Enhancements

Potential features to add:
- Expense tracking
- Maintenance work logs
- Rent payment tracking
- Email notifications for renewals
- Mobile app version
- Multi-user access with authentication

## Support

Questions? Issues? Open an issue on GitHub or contact the developer.

## License

MIT License - Free to use and modify for your rental business.
