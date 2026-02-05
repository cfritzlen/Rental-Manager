# How to Set Up Your Rental Manager on GitHub

Follow these steps to get your rental management system accessible from any device.

## Step 1: Set Up Your Database First

Before uploading to GitHub, you need to set up your Supabase database:

1. Go to https://supabase.com
2. Sign in to your account
3. Open your "Rental Management" project
4. Click **SQL Editor** in the left sidebar
5. Click **New Query**
6. Open the `setup-database.sql` file
7. Copy everything and paste into the query editor
8. Click **Run**
9. You should see "Success. No rows returned"

Your database table is now created!

## Step 2: Update Your Database Keys in the Code

**IMPORTANT**: Before uploading to GitHub, your Supabase keys are already in the code. You can leave them as-is since they're public keys designed for client-side apps. 

However, if you want to change them later:

1. Open `index.html` in any text editor
2. Find lines 430-431 (search for "SUPABASE_URL")
3. Update with your own keys if needed
4. Save the file

## Step 3: Create a GitHub Repository

1. Go to https://github.com
2. Log in (or create an account if you don't have one)
3. Click the **+** icon in the top right
4. Click **"New repository"**
5. Name it: `rental-management` (or whatever you want)
6. Set to **Public** (required for free GitHub Pages)
7. Do NOT initialize with README (we already have one)
8. Click **"Create repository"**

## Step 4: Upload Your Files to GitHub

**Option A: Using GitHub Web Interface (Easiest)**

1. On your new repository page, click **"uploading an existing file"**
2. Drag and drop ALL these files:
   - `index.html`
   - `README.md`
   - `setup-database.sql`
   - `.gitignore`
3. Add commit message: "Initial commit"
4. Click **"Commit changes"**

**Option B: Using Command Line (If you're comfortable with Git)**

```bash
# Navigate to the rental-management-system folder
cd /path/to/rental-management-system

# Initialize git
git init

# Add all files
git add .

# Commit
git commit -m "Initial commit"

# Connect to your GitHub repo (replace with YOUR username and repo name)
git remote add origin https://github.com/YOUR-USERNAME/rental-management.git

# Push to GitHub
git branch -M main
git push -u origin main
```

## Step 5: Enable GitHub Pages (Make It Accessible Online)

1. In your GitHub repository, click **"Settings"**
2. Scroll down and click **"Pages"** in the left sidebar
3. Under "Source", select **"main"** branch
4. Leave folder as **"/ (root)"**
5. Click **"Save"**
6. Wait 1-2 minutes for GitHub to build your site
7. Refresh the page - you'll see a URL like:
   ```
   Your site is live at https://YOUR-USERNAME.github.io/rental-management/
   ```

## Step 6: Access From Any Device

Now you can access your rental manager from:
- Any computer: Just go to the GitHub Pages URL
- Your phone: Save the URL as a bookmark or add to home screen
- Tablet: Same thing!

**Bookmark it** so you can always find it quickly.

## Step 7: Making Changes Later

When you want to update the app:

1. Edit the `index.html` file on your computer
2. Go to your GitHub repository
3. Click on `index.html`
4. Click the pencil icon (Edit)
5. Paste your updated code
6. Scroll down, add commit message
7. Click **"Commit changes"**

Changes will be live in 1-2 minutes!

## Troubleshooting

**Can't see the app working?**
- Make sure you ran the SQL setup in Supabase
- Check that your Supabase project is active
- Try opening your browser console (F12) to see any errors

**GitHub Pages not working?**
- Make sure repository is **Public**
- Check that you selected "main" branch in Pages settings
- Wait a few minutes - it can take time to deploy

**Need to update your Supabase keys?**
- Edit `index.html` on GitHub
- Update the SUPABASE_URL and SUPABASE_KEY variables
- Commit changes

## Security Note

Your Supabase anon/public key is safe to put on GitHub - it's designed for public client apps. The database has Row Level Security enabled to protect your data.

## What's Next?

Once this is working, we can add:
- Expense tracking
- Better mobile design
- Export features
- And more!

---

Need help? Just ask!
