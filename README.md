# Supa Assets

A CDN-hosted repository for fonts and other static assets, optimized for use in HTML emails and web applications.

## 📦 What's Inside

This repository hosts web-optimized font files that can be loaded directly via jsDelivr CDN. All fonts are provided in both WOFF and WOFF2 formats for maximum email client and browser compatibility.

### Available Fonts

#### Roobert
- **Weights:** Regular, Medium, SemiBold, Bold
- **Formats:** WOFF, WOFF2

#### Rebond Grotesque
- **Weights:** Regular, Bold
- **Formats:** WOFF, WOFF2

---

## 🚀 Usage with jsDelivr CDN

### CDN URLs

All font files are available via jsDelivr CDN. Use these URLs to reference fonts in your HTML emails or web pages:

#### Roobert Font Family

**Regular (400)**
```
https://cdn.jsdelivr.net/gh/Blockstal-Co/supa-assets/fonts/roobert/Roobert-Regular.woff2
https://cdn.jsdelivr.net/gh/Blockstal-Co/supa-assets/fonts/roobert/Roobert-Regular.woff
```

**Medium (500)**
```
https://cdn.jsdelivr.net/gh/Blockstal-Co/supa-assets/fonts/roobert/Roobert-Medium.woff2
https://cdn.jsdelivr.net/gh/Blockstal-Co/supa-assets/fonts/roobert/Roobert-Medium.woff
```

**SemiBold (600)**
```
https://cdn.jsdelivr.net/gh/Blockstal-Co/supa-assets/fonts/roobert/Roobert-SemiBold.woff2
https://cdn.jsdelivr.net/gh/Blockstal-Co/supa-assets/fonts/roobert/Roobert-SemiBold.woff
```

**Bold (700)**
```
https://cdn.jsdelivr.net/gh/Blockstal-Co/supa-assets/fonts/roobert/Roobert-Bold.woff2
https://cdn.jsdelivr.net/gh/Blockstal-Co/supa-assets/fonts/roobert/Roobert-Bold.woff
```

#### Rebond Grotesque Font Family

**Regular (400)**
```
https://cdn.jsdelivr.net/gh/Blockstal-Co/supa-assets/fonts/rebond-grotesque/RebondGrotesque-Regular.woff2
https://cdn.jsdelivr.net/gh/Blockstal-Co/supa-assets/fonts/rebond-grotesque/RebondGrotesque-Regular.woff
```

**Bold (700)**
```
https://cdn.jsdelivr.net/gh/Blockstal-Co/supa-assets/fonts/rebond-grotesque/RebondGrotesque-Bold.woff2
https://cdn.jsdelivr.net/gh/Blockstal-Co/supa-assets/fonts/rebond-grotesque/RebondGrotesque-Bold.woff
```

---

## 💌 HTML Email Usage

### CSS @font-face Declaration

Add this to your email template's `<style>` tag:

```html
<style>
  /* Roobert Regular */
  @font-face {
    font-family: 'Roobert';
    src: url('https://cdn.jsdelivr.net/gh/Blockstal-Co/supa-assets/fonts/roobert/Roobert-Regular.woff2') format('woff2'),
         url('https://cdn.jsdelivr.net/gh/Blockstal-Co/supa-assets/fonts/roobert/Roobert-Regular.woff') format('woff');
    font-weight: 400;
    font-style: normal;
    font-display: swap;
  }

  /* Roobert Medium */
  @font-face {
    font-family: 'Roobert';
    src: url('https://cdn.jsdelivr.net/gh/Blockstal-Co/supa-assets/fonts/roobert/Roobert-Medium.woff2') format('woff2'),
         url('https://cdn.jsdelivr.net/gh/Blockstal-Co/supa-assets/fonts/roobert/Roobert-Medium.woff') format('woff');
    font-weight: 500;
    font-style: normal;
    font-display: swap;
  }

  /* Roobert SemiBold */
  @font-face {
    font-family: 'Roobert';
    src: url('https://cdn.jsdelivr.net/gh/Blockstal-Co/supa-assets/fonts/roobert/Roobert-SemiBold.woff2') format('woff2'),
         url('https://cdn.jsdelivr.net/gh/Blockstal-Co/supa-assets/fonts/roobert/Roobert-SemiBold.woff') format('woff');
    font-weight: 600;
    font-style: normal;
    font-display: swap;
  }

  /* Roobert Bold */
  @font-face {
    font-family: 'Roobert';
    src: url('https://cdn.jsdelivr.net/gh/Blockstal-Co/supa-assets/fonts/roobert/Roobert-Bold.woff2') format('woff2'),
         url('https://cdn.jsdelivr.net/gh/Blockstal-Co/supa-assets/fonts/roobert/Roobert-Bold.woff') format('woff');
    font-weight: 700;
    font-style: normal;
    font-display: swap;
  }

  /* Rebond Grotesque Regular */
  @font-face {
    font-family: 'Rebond Grotesque';
    src: url('https://cdn.jsdelivr.net/gh/Blockstal-Co/supa-assets/fonts/rebond-grotesque/RebondGrotesque-Regular.woff2') format('woff2'),
         url('https://cdn.jsdelivr.net/gh/Blockstal-Co/supa-assets/fonts/rebond-grotesque/RebondGrotesque-Regular.woff') format('woff');
    font-weight: 400;
    font-style: normal;
    font-display: swap;
  }

  /* Rebond Grotesque Bold */
  @font-face {
    font-family: 'Rebond Grotesque';
    src: url('https://cdn.jsdelivr.net/gh/Blockstal-Co/supa-assets/fonts/rebond-grotesque/RebondGrotesque-Bold.woff2') format('woff2'),
         url('https://cdn.jsdelivr.net/gh/Blockstal-Co/supa-assets/fonts/rebond-grotesque/RebondGrotesque-Bold.woff') format('woff');
    font-weight: 700;
    font-style: normal;
    font-display: swap;
  }

  /* Apply fonts */
  body, .roobert {
    font-family: 'Roobert', Arial, sans-serif;
  }

  .rebond {
    font-family: 'Rebond Grotesque', Arial, sans-serif;
  }
</style>
```

### Example Usage

```html
<div style="font-family: 'Roobert', Arial, sans-serif; font-weight: 400;">
  This text uses Roobert Regular
</div>

<div style="font-family: 'Roobert', Arial, sans-serif; font-weight: 700;">
  This text uses Roobert Bold
</div>

<div style="font-family: 'Rebond Grotesque', Arial, sans-serif;">
  This text uses Rebond Grotesque Regular
</div>
```

---

## 🛠️ Development

### Adding New Fonts

1. Place your source font files (.ttf or .otf) in a `source-fonts/` directory:
   ```
   source-fonts/
     font-family-name/
       FontName-Regular.ttf
       FontName-Bold.ttf
   ```

2. Run the conversion script:
   ```bash
   ./convert-fonts.sh
   ```

3. Commit and push the converted WOFF/WOFF2 files

### Font Conversion

The repository includes `convert-fonts.sh` which automatically converts TTF/OTF fonts to WOFF and WOFF2 formats using fonttools.

**Requirements:**
- Python 3
- fonttools: `pip install fonttools brotli`

---

## 📝 Notes

- **Email Client Compatibility:** WOFF2 has excellent support in modern email clients, while WOFF provides fallback for older clients.
- **CDN Caching:** jsDelivr automatically caches files and serves them from the nearest edge location.
- **Versioning:** You can pin to a specific commit or tag by replacing the URL with `@<commit-hash>` or `@<tag>`.
- **File Size:** WOFF2 files are typically 30% smaller than WOFF files.

---

## 📄 License

Font files are subject to their respective licenses. Please ensure you have the appropriate licenses for web/email use.
