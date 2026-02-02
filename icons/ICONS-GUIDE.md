# Social Media Icons Guide

## Recommended Icons for Email

For HTML emails, you'll want SVG or PNG icons. Here are the most common social media platforms:

### Common Social Media Icons Needed:
- Facebook
- Instagram
- Twitter/X
- LinkedIn
- YouTube
- TikTok
- WhatsApp
- Telegram
- Discord
- GitHub

---

## How to Add Icons

### Option 1: Download from Simple Icons
Simple Icons (https://simpleicons.org/) provides free SVG icons for all major brands.

```bash
# Install simple-icons (optional)
npm install simple-icons

# Or download manually from https://simpleicons.org/
```

### Option 2: Create Custom Icons
Place your SVG or PNG icons in the `icons/social/` folder with this naming convention:
```
facebook.svg
instagram.svg
twitter.svg
linkedin.svg
youtube.svg
tiktok.svg
whatsapp.svg
telegram.svg
discord.svg
github.svg
```

### Recommended Format for Email
- **SVG** - Best quality, scalable, small file size
- **PNG** - Good compatibility with older email clients
- Recommended sizes: 24x24, 32x32, 48x48 pixels

---

## Quick Setup Script

Save your icon files to `icons/social/` and they'll be available via jsDelivr:

```
https://cdn.jsdelivr.net/gh/Blockstal-Co/supa-assets/icons/social/facebook.svg
https://cdn.jsdelivr.net/gh/Blockstal-Co/supa-assets/icons/social/instagram.svg
https://cdn.jsdelivr.net/gh/Blockstal-Co/supa-assets/icons/social/twitter.svg
```

---

## HTML Email Usage

### Method 1: Direct Image Tag (Most Compatible)
```html
<a href="https://facebook.com/yourpage">
  <img src="https://cdn.jsdelivr.net/gh/Blockstal-Co/supa-assets/icons/social/facebook.svg" 
       alt="Facebook" 
       width="32" 
       height="32" 
       style="display: inline-block; vertical-align: middle;">
</a>
```

### Method 2: Inline SVG (Better Quality)
For inline SVG, you'll need to embed the SVG code directly in your email template.

### Example Social Media Footer
```html
<table role="presentation" style="margin: 20px auto;">
  <tr>
    <td style="padding: 0 10px;">
      <a href="https://facebook.com/yourpage">
        <img src="https://cdn.jsdelivr.net/gh/Blockstal-Co/supa-assets/icons/social/facebook.svg" 
             alt="Facebook" width="32" height="32">
      </a>
    </td>
    <td style="padding: 0 10px;">
      <a href="https://instagram.com/yourprofile">
        <img src="https://cdn.jsdelivr.net/gh/Blockstal-Co/supa-assets/icons/social/instagram.svg" 
             alt="Instagram" width="32" height="32">
      </a>
    </td>
    <td style="padding: 0 10px;">
      <a href="https://twitter.com/yourhandle">
        <img src="https://cdn.jsdelivr.net/gh/Blockstal-Co/supa-assets/icons/social/twitter.svg" 
             alt="Twitter" width="32" height="32">
      </a>
    </td>
  </tr>
</table>
```

---

## Free Icon Resources

1. **Simple Icons** - https://simpleicons.org/
   - Free SVG icons for 2000+ brands
   - Monochrome, consistent style

2. **Font Awesome** - https://fontawesome.com/
   - Free tier available
   - Multiple styles

3. **Iconify** - https://iconify.design/
   - Huge collection
   - Multiple icon sets

4. **Heroicons** - https://heroicons.com/
   - MIT licensed
   - Modern design

---

## Tips for Email Icons

1. **Keep file sizes small** - Optimize SVGs, compress PNGs
2. **Use alt text** - Important for accessibility
3. **Set explicit dimensions** - width and height attributes
4. **Test across email clients** - Gmail, Outlook, Apple Mail
5. **Consider fallbacks** - Some clients block images by default
