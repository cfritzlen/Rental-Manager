# Properties Table Setup Guide

## What Changed:

✅ **Created `properties` table** - Master list of all your rental units
✅ **Updated lease form** - Now uses dropdown that loads from properties table
✅ **Added 13 properties** - 4 building-level rows + 9 unit rows

## Step-by-Step Setup:

### Step 1: Create Properties Table in Supabase

1. Go to https://fzjzzujrjqjacbfbwcvd.supabase.co
2. Click **SQL Editor** in left sidebar
3. Click **New query**
4. Copy/paste the entire contents of `create-properties-table.sql`
5. Click **Run** (or press Cmd+Enter / Ctrl+Enter)
6. You should see: "Success. No rows returned"
7. Click **Table Editor** to verify - you should see 13 rows in the `properties` table

### Step 2: Upload Updated index.html

1. Go to your GitHub repository
2. Upload the new `index.html` file (replaces old one)
3. Commit changes
4. Wait ~1 minute for GitHub Pages to rebuild

### Step 3: Test It!

1. Go to https://cfritzlen.github.io/Rental-Manager/
2. Hard refresh (Ctrl+Shift+R or Cmd+Shift+R)
3. Click **New Lease**
4. Check the **Property & Unit** dropdown
5. Should show 9 properties (only units, not buildings):
   - 180 N Courtland St, Unit 180A
   - 180 N Courtland St, Unit 180B
   - 182 N Courtland St, Unit 182A
   - 182 N Courtland St, Unit 182B
   - 503 Lindbergh Ave, 1st Floor
   - 503 Lindbergh Ave, 2nd Floor
   - 1028 Poplar Valley Road East
   - 1038 Poplar Valley Road East, Downstairs
   - 1038 Poplar Valley Road East, Attic

### Step 4: Create a Test Lease

1. Fill out the form with test data
2. Select a property from dropdown
3. Click **Save & Generate PDF**
4. Should work exactly like before!

## What's Different:

**Before:**
- Properties were hardcoded in HTML
- Had to edit code to add/remove properties

**After:**
- Properties come from database
- Can add/remove properties by editing the `properties` table
- Building-level rows ready for expense tracking (water/sewer for whole building)

## Properties Table Structure:

| What | Example |
|------|---------|
| **Building-level rows** (4) | "180 N Courtland St" - for building-wide expenses |
| **Unit-level rows** (9) | "180 N Courtland St, Unit 180A" - for leases & unit expenses |

**Lease dropdown shows:** Only the 9 units (not the buildings)
**Expense dropdown will show:** All 13 rows (buildings + units)

## Troubleshooting:

**Dropdown shows "Loading properties..."**
→ Check browser console for errors
→ Make sure SQL ran successfully in Supabase

**Dropdown shows "Error loading properties"**
→ Check Supabase Table Editor - is the `properties` table there?
→ Check browser console for specific error

**Old properties still showing**
→ Hard refresh browser (Ctrl+Shift+R or Cmd+Shift+R)
→ Clear browser cache

## Next Step: Expenses!

Once properties are working, we'll add the expense tracker that uses this same properties table.

**Questions to think about for expenses:**
- What expense categories? (Repairs, Utilities, Insurance, Taxes, Mortgage, HOA, etc.)
- Track receipts/invoices?
- How do you want reports? (Monthly? Annual for taxes? By property? By building?)
- Need to export to CSV/Excel?

---

**Let me know once Step 1-3 are complete and working!** 🎉
