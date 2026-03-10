# שעת שיחה — Static Website

This is a static HTML replacement for the Wix website at shatsicha.com.

## Quick Setup (2 minutes)

### Step 1: Download the images

The images are not included in this package (they're still on Wix's servers).
Run one of the download scripts to fetch them:

**Mac / Linux:**
```bash
cd shatsicha-site
chmod +x download-images.sh
./download-images.sh
```

**Windows (PowerShell):**
```
Right-click download-images.ps1 → Run with PowerShell
```

Or just download these 5 files manually and put them in the `images/` folder:
- **logo.png** — the main logo
- **logo-white.png** — white version for the footer
- **portrait.jpg** — Galit's photo
- **hero-bg.jpg** — homepage background
- **contact-bg.jpg** — contact section background

### Step 2: Open in browser

Double-click `index.html` to preview locally.

### Step 3: Deploy for free

Upload the entire `shatsicha-site` folder to any of these free hosts:

1. **Netlify** (https://netlify.com) — drag & drop the folder
2. **Cloudflare Pages** (https://pages.cloudflare.com) — connect to GitHub or upload
3. **GitHub Pages** — push to a repo, enable Pages in settings

### Step 4: Point the domain

Update the DNS records for shatsicha.com to point to your new host.
Each hosting provider has instructions for this.

## Folder Structure

```
shatsicha-site/
├── index.html              ← The entire website
├── images/                 ← Created by the download script
│   ├── logo.png
│   ├── logo-white.png
│   ├── portrait.jpg
│   ├── hero-bg.jpg
│   └── contact-bg.jpg
├── download-images.sh      ← Mac/Linux image downloader
├── download-images.ps1     ← Windows image downloader
└── README.md               ← This file
```

## Adding a Working Contact Form

The current form shows a success message but doesn't actually send emails.
To make it work, sign up for a free form service:

**Option A: Formspree (https://formspree.io)**
1. Create a free account
2. Create a new form
3. Replace the `submitForm()` function in index.html with a fetch to your Formspree endpoint

**Option B: Web3Forms (https://web3forms.com)**
1. Get a free access key
2. Same process — send form data to their API

Both are free for small volumes (perfect for this site).
