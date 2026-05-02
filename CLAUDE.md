# CLAUDE.md — שעת שיחה Site

## Project Overview
Static HTML/CSS/JS site for Galit Granot (גלית גרנות), a personal coach and mediator based in Israel. Migrated from Wix to eliminate subscription costs. Live at https://shatsicha.com/.

## Project Structure
```
shatsicha-site/
├── index.html              ← Homepage (hero + about + contact form)
├── faq.html                ← FAQ page (accordion)
├── about.html              ← About page (long-form bio)
├── cases.html              ← Cases listing page (5 case cards)
├── cases/
│   ├── case-1.html         ← "אמא, אנחנו צריכות לדבר"
│   ├── case-2.html         ← "כשהמסך יורד"
│   ├── case-3.html         ← "הוא בוגד בי?"
│   ├── case-4.html         ← "תקועים בעבודה?"
│   └── case-5.html         ← "אחרי הסערה"
├── css/
│   └── styles.css          ← All styles (NOTE: filename is styles.css, not style.css)
├── js/
│   └── main.js             ← All interactivity
├── images/
│   ├── logo.png            ← Heart logo with faces (blue, used in navbar)
│   ├── logo-white.png      ← White version of the logo (used in footer)
│   ├── portrait.jpg        ← Galit's portrait photo
│   ├── hero-bg.jpg         ← Hero section background image
│   ├── contact-bg.jpg      ← Contact section background
│   └── og-image.jpg        ← Open Graph social sharing image
├── google941ae093406ccdae.html  ← Google Search Console verification
└── CLAUDE.md
```

## Tech Stack & Services
- **Hosting**: GitHub Pages (free) at shatsicha.com
- **Contact form**: Web3Forms (API key in index.html, registered with granotga@gmail.com)
- **Analytics**: Google Analytics (G-2E1DC24WRF) — added to all pages
- **Fonts**: Google Fonts — Heebo (body) + Rubik (headings)
- **Favicon**: Inline SVG data URI (blue circle with ש)

## Design System

### Color Palette (CSS custom properties in :root)
- `--blue`: `#B0C8DA` (primary — hero/about background)
- `--blue-dark`: `#8FB0C6`
- `--heading-blue`: `#6A9AB8` (page titles on white backgrounds)
- `--accent`: `#C9956B` (warm accent — buttons, hover states, active nav)
- `--accent-dark`: `#B5804E`
- `--text-gray`: `#555555` (body text)
- `--text-dark`: `#333333`
- `--footer-bg`: `#2D4059` (dark navy footer)

### Typography
- Body: `'Heebo', sans-serif` — weights 300-700
- Headings (h1, h2): `'Rubik', 'Heebo', sans-serif` — weights 500-700
- RTL direction on all pages (`dir="rtl"`)

### Key Visual Elements
1. Line-art furniture illustrations (inline SVG) — white on blue (hero), blue on white (contact)
2. Heart logo with two face profiles
3. Warm accent color (#C9956B) for CTAs and interactive elements
4. Soft shadows, rounded corners (25px buttons, 12px cards)

## Page Architecture

### Navigation (consistent across all pages)
Links: שעת שיחה | שאלות ותשובות | אודות | מקרים | צור קשר | האתר הראשי (→ galitgranot.com)

- Root pages link to: `index.html`, `faq.html`, `about.html`, `cases.html`, `index.html#contact`
- Case pages use relative `../` prefix for all links
- Active page gets `class="active"` on its nav link
- Case article pages mark "מקרים" as active

### Footer (consistent across all pages)
- White logo, same nav links, copyright line
- Footer background: `--footer-bg` (#2D4059)

### index.html
- Hero section (blue bg + inline SVG illustration + text)
- About section (blue bg + portrait + short bio)
- Contact form (white bg + Web3Forms + inline SVG illustration)
- Contact form uses honeypot spam protection + h-captcha

### faq.html
- 5 accordion items, one open at a time
- FAQ 2 ("למי זה מתאים?") has a bulleted list

### about.html
- Long-form narrative bio (14 paragraphs)
- Callout box at bottom with accent border

### cases.html
- Grid of 5 case cards (title + preview + "לקריאה" link)

### cases/case-*.html
- Article content with blockquote "השורה התחתונה"
- CTA section ("רוצים לשוחח?") before footer
- Back link to cases.html

## JS Functionality (main.js)
- Navbar scroll shadow (`.scrolled` class on scroll > 50px)
- Mobile hamburger menu toggle (`toggleNav()`)
- Close mobile nav on link click
- FAQ accordion with one-open-at-a-time (`toggleFaq()`)
- Scroll-reveal animations (IntersectionObserver, `.reveal` → `.visible`)
- Contact form async submit via Web3Forms API with loading/success/error states

## Completed Work
- [x] All images downloaded locally
- [x] index.html with hero, about, contact form
- [x] faq.html with accordion
- [x] about.html with long-form bio
- [x] cases.html listing + 5 case article pages
- [x] css/styles.css with full responsive design
- [x] js/main.js with all interactivity
- [x] Line-art illustrations as inline SVG
- [x] Contact form wired to Web3Forms
- [x] Google Analytics (G-2E1DC24WRF) on all pages
- [x] Google Search Console verification
- [x] Open Graph tags on index.html
- [x] JSON-LD structured data on index.html
- [x] Deployed to GitHub Pages
- [x] Domain shatsicha.com pointed to host
- [x] Phone field label changed from סלפון to טלפון

## Known Issues (from audit)
See audit for full list. Key items:
- Missing canonical URLs, OG tags, and structured data on pages other than index.html
- Security meta tags only on index.html (not other pages)
- Mobile hamburger menu lacks ARIA attributes
- FAQ buttons missing aria-expanded
- No robots.txt or sitemap.xml
- No 404.html page
- `.reveal` elements invisible if JS fails (opacity: 0 default)
- No CTA section on about.html or faq.html
- Portrait image not lazy-loaded
