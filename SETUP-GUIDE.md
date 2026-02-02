# 🎯 Complete Setup Guide

## Step-by-Step Process to Upload Your Fonts

### Step 1: Install fonttools (Required for Font Conversion)

```bash
pip3 install fonttools brotli
```

### Step 2: Organize Your Source Font Files

Create a `source-fonts` directory in the repository and organize your font files:

```bash
mkdir -p source-fonts/roobert
mkdir -p source-fonts/rebond-grotesque
```

Then copy your font files into these directories:

```
source-fonts/
├── roobert/
│   ├── Roobert-Regular.ttf
│   ├── Roobert-Medium.ttf
│   ├── Roobert-SemiBold.ttf
│   └── Roobert-Bold.ttf
└── rebond-grotesque/
    ├── RebondGrotesque-Regular.otf
    └── RebondGrotesque-Bold.otf
```

**How to copy files:**
- On Mac, you can drag and drop the files into the folders, or use:
  ```bash
  cp /path/to/your/Roobert-*.ttf source-fonts/roobert/
  cp /path/to/your/RebondGrotesque-*.otf source-fonts/rebond-grotesque/
  ```

### Step 3: Convert Fonts to WOFF and WOFF2

Run the conversion script:

```bash
./convert-fonts.sh
```

This will:
- Convert all `.ttf` files in `source-fonts/roobert/` to WOFF and WOFF2 formats
- Convert all `.otf` files in `source-fonts/rebond-grotesque/` to WOFF and WOFF2 formats
- Output the converted files to the `fonts/` directory

After conversion, you should have:

```
fonts/
├── roobert/
│   ├── Roobert-Regular.woff2
│   ├── Roobert-Regular.woff
│   ├── Roobert-Medium.woff2
│   ├── Roobert-Medium.woff
│   ├── Roobert-SemiBold.woff2
│   ├── Roobert-SemiBold.woff
│   ├── Roobert-Bold.woff2
│   └── Roobert-Bold.woff
└── rebond-grotesque/
    ├── RebondGrotesque-Regular.woff2
    ├── RebondGrotesque-Regular.woff
    ├── RebondGrotesque-Bold.woff2
    └── RebondGrotesque-Bold.woff
```

### Step 4: Commit and Push to GitHub

```bash
# Check what files will be committed (source-fonts/ is ignored)
git status

# Add all the converted font files and documentation
git add fonts/ README.md .gitignore convert-fonts.sh

# Commit the changes
git commit -m "Add web-optimized fonts (WOFF/WOFF2) for Roobert and Rebond Grotesque"

# Push to GitHub
git push origin main
```

### Step 5: Wait for jsDelivr to Index (About 5-10 minutes)

After pushing to GitHub, jsDelivr needs a few minutes to index your repository. You can check if your files are ready by visiting:

```
https://cdn.jsdelivr.net/gh/Blockstal-Co/supa-assets/
```

### Step 6: Use Your Fonts! 🎉

Once jsDelivr has indexed your repo, you can use the CDN URLs in your HTML emails:

#### All jsDelivr CDN URLs:

**Roobert:**
- `https://cdn.jsdelivr.net/gh/Blockstal-Co/supa-assets/fonts/roobert/Roobert-Regular.woff2`
- `https://cdn.jsdelivr.net/gh/Blockstal-Co/supa-assets/fonts/roobert/Roobert-Regular.woff`
- `https://cdn.jsdelivr.net/gh/Blockstal-Co/supa-assets/fonts/roobert/Roobert-Medium.woff2`
- `https://cdn.jsdelivr.net/gh/Blockstal-Co/supa-assets/fonts/roobert/Roobert-Medium.woff`
- `https://cdn.jsdelivr.net/gh/Blockstal-Co/supa-assets/fonts/roobert/Roobert-SemiBold.woff2`
- `https://cdn.jsdelivr.net/gh/Blockstal-Co/supa-assets/fonts/roobert/Roobert-SemiBold.woff`
- `https://cdn.jsdelivr.net/gh/Blockstal-Co/supa-assets/fonts/roobert/Roobert-Bold.woff2`
- `https://cdn.jsdelivr.net/gh/Blockstal-Co/supa-assets/fonts/roobert/Roobert-Bold.woff`

**Rebond Grotesque:**
- `https://cdn.jsdelivr.net/gh/Blockstal-Co/supa-assets/fonts/rebond-grotesque/RebondGrotesque-Regular.woff2`
- `https://cdn.jsdelivr.net/gh/Blockstal-Co/supa-assets/fonts/rebond-grotesque/RebondGrotesque-Regular.woff`
- `https://cdn.jsdelivr.net/gh/Blockstal-Co/supa-assets/fonts/rebond-grotesque/RebondGrotesque-Bold.woff2`
- `https://cdn.jsdelivr.net/gh/Blockstal-Co/supa-assets/fonts/rebond-grotesque/RebondGrotesque-Bold.woff`

---

## 📧 Quick Copy-Paste for Email Templates

Copy the entire `@font-face` CSS from the README.md file and paste it into your email template's `<style>` section. Then use the fonts like this:

```html
<div style="font-family: 'Roobert', Arial, sans-serif; font-weight: 500;">
  Your email content with Roobert Medium
</div>
```

---

## 🔧 Alternative: Manual Font Conversion (Without Script)

If you prefer to convert fonts manually, use these online tools:

1. **CloudConvert** - https://cloudconvert.com/ttf-to-woff2
   - Upload your .ttf or .otf files
   - Convert to WOFF and WOFF2
   - Download and place in the appropriate `fonts/` subdirectory

2. **Transfonter** - https://transfonter.org/
   - Upload your fonts
   - Check "WOFF" and "WOFF2"
   - Download the converted files
   - Rename them to match the naming convention and place in folders

---

## ✅ Checklist

- [ ] Install fonttools: `pip3 install fonttools brotli`
- [ ] Create `source-fonts/` directory structure
- [ ] Copy your TTF/OTF files to `source-fonts/`
- [ ] Run `./convert-fonts.sh`
- [ ] Verify converted files in `fonts/` directory
- [ ] Commit and push to GitHub
- [ ] Wait 5-10 minutes for jsDelivr to index
- [ ] Test the CDN URLs in your email templates
- [ ] Celebrate! 🎉
