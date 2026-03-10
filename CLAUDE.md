# CLAUDE.md — שעת שיחה Site Migration

## Project Overview
Migrating a Wix website (https://www.shatsicha.com/) to a static HTML/CSS/JS site to eliminate Wix subscription costs. The site belongs to Galit Granot (גלית גרנות), a personal coach and mediator based in Israel.

## Project Structure
```
shatsicha-site/
├── index.html              ← Main homepage (hero + about + contact form)
├── faq.html                ← FAQ page (separate page, not a section)
├── css/
│   └── style.css           ← All styles
├── js/
│   └── main.js             ← All interactivity
├── images/                 ← Local copies of all images
│   ├── logo.png            ← Heart logo with faces (blue, used in navbar)
│   ├── logo-white.png      ← White version of the logo (used in footer)
│   ├── portrait.jpg        ← Galit's portrait photo
│   ├── hero-bg.jpg         ← Hero section background image (the line-art furniture illustration)
│   └── contact-bg.jpg      ← Contact section background (line-art on right side)
└── CLAUDE.md
```

## IMPORTANT: Visual Design (from screenshots)
The design must match the original Wix site closely. Here are the exact visual specs:

### Color Palette
- **Primary blue**: `#B0C8DA` (light steel blue — the dominant color on the site)
- **Text on blue**: `#FFFFFF` (white)
- **Headings on white**: `#6A9AB8` (muted blue, used for FAQ title, contact title "?רוצים לשוחח")
- **Body text on white**: `#555555` (medium gray)
- **Navbar background**: `#FFFFFF` (white)
- **Footer background**: `#B0C8DA` (same blue) or darker shade
- **Form inputs border**: `#B0C8DA` (light blue tint)
- **Submit button**: `#B0C8DA` (blue, full-width, rounded)
- **Overall feel**: Soft, calming, airy. NOT gold, NOT cream, NOT warm tones.

### Typography
- Clean sans-serif font for Hebrew text
- Headings are bold, slightly larger
- Body text is regular weight, good line spacing
- All text is right-aligned (RTL)

### Layout — Homepage (index.html)

**Navbar (sticky, white background)**
- Logo on the RIGHT side: heart-shaped icon with two face profiles + text "שעת שיחה / גלית גרנות"
- Nav links on the left, spaced apart: עמוד ראשי | שאלות ותשובות | צור קשר
- The logo is in the primary blue color
- Clean, minimal navbar with subtle bottom border

**Hero Section (full-width, blue background #B0C8DA)**
- White line-art illustration on the LEFT side showing furniture silhouettes (lamp, chairs, table — suggesting a therapy/conversation setting)
- Text content on the RIGHT side, all in white:
  - Large heading: "שעת שיחה"
  - Subheading: "הכוונה מקצועית לפתרון בעיות שמטרידות את שגרת החיים שלך"
  - Two paragraphs of body text
- The line-art illustration is a key visual element — it's outlined/wireframe style in white

**About Section (continues on blue background, same #B0C8DA)**
- Galit's portrait photo on the LEFT in a white-bordered square frame, slightly elevated/overlapping
- Her name "גלית גרנות" as heading on the RIGHT in white/bold
- Bio text below in white
- This section flows seamlessly from the hero (same blue background)

**Contact Form Section (WHITE background)**
- Heading "?רוצים לשוחח" in muted blue (#6A9AB8)
- Line-art illustration on the RIGHT side (similar wireframe style, blue outlines on white)
- Form on the LEFT/CENTER with fields:
  - Row 1: שם פרטי (first name) + שם משפחה (last name) — TWO COLUMNS side by side
  - Row 2: אימייל (email) — full width
  - Row 3: סלפון (phone) — full width
  - Row 4: הערות (לא חובה) (notes, optional) — full width
  - reCAPTCHA widget
  - Submit button: "שליחה" — full width, rounded, blue background
- Input fields have light blue borders, rounded corners, placeholder text aligned right

**Footer**
- Blue background matching the site theme
- White logo
- Navigation links
- Copyright

### Layout — FAQ Page (faq.html)

**Same navbar as homepage**

**Page title**
- "שאלות ותשובות" in muted blue, centered, large

**Accordion FAQ items**
- Very clean, minimal design on white background
- Each item has:
  - Question text on the RIGHT (bold, dark text)
  - Chevron arrow (∨) on the LEFT that rotates up (∧) when open
  - Thin horizontal line separator between items
  - Answer text appears below when expanded, regular weight
- NO colored backgrounds on FAQ items, NO cards/shadows — just clean lines
- Maximum width container, centered on page

### Key Visual Elements
1. **The line-art illustrations** are a signature design element — white wireframe drawings of furniture (lamp, sofa, chairs, bottle) on the blue sections, and blue wireframe on the white contact section
2. **The heart logo** with two face profiles is the brand identity
3. **The blue color** (#B0C8DA) is used extensively and consistently
4. **Clean whitespace** — the design breathes, nothing feels cramped
5. **No harsh shadows or heavy borders** — everything is soft and gentle

## Images to Download from Wix
All images must be downloaded locally into the `images/` folder:

| Local filename     | Wix CDN URL |
|---|---|
| `logo.png`         | `https://static.wixstatic.com/media/e3a329_44a32735409845159529e06b5916ede5~mv2.png/v1/fill/w_310,h_172,al_c,q_85,usm_0.66_1.00_0.01,enc_avif,quality_auto/%D7%9D%D7%9C%D7%A8%20logo.png` |
| `logo-white.png`   | `https://static.wixstatic.com/media/e3a329_a1259fcf8fe545b7819e358a9c650a96~mv2.png/v1/fill/w_290,h_162,al_c,q_85,usm_0.66_1.00_0.01,enc_avif,quality_auto/%D7%9D%D7%9C%D7%A8%20logo%20white_1.png` |
| `portrait.jpg`     | `https://static.wixstatic.com/media/e3a329_0a6a362206ed44839c66d815828e5885~mv2.jpg/v1/fill/w_690,h_690,al_c,q_85,usm_0.66_1.00_0.01,enc_avif,quality_auto/TOM_7179.jpg` |
| `hero-bg.jpg`      | `https://static.wixstatic.com/media/e3a329_f369b3df3c614cbb8c0defb2edcdffb9f000.jpg/v1/fill/w_1920,h_900,al_c,q_85,usm_0.66_1.00_0.01,enc_avif,quality_auto/e3a329_f369b3df3c614cbb8c0defb2edcdffb9f000.jpg` |
| `contact-bg.jpg`   | `https://static.wixstatic.com/media/e3a329_5ce757cae6ce4944b5d006f760145b84f000.jpg/v1/fill/w_1920,h_900,al_c,q_85,usm_0.66_1.00_0.01,enc_avif,quality_auto/e3a329_5ce757cae6ce4944b5d006f760145b84f000.jpg` |

Note: The line-art furniture illustrations may be embedded in the background images, or they may be separate SVG/vector elements. Check the downloaded images. If the line-art is NOT in the background images, it should be recreated as SVG inline elements (white wireframe outlines of a lamp, chairs, sofa, table, and bottle shapes).

## Original Hebrew Content

### Hero Section
- **Title**: שעת שיחה
- **Subtitle**: הכוונה מקצועית לפתרון בעיות שמטרידות את שגרת החיים שלך
- **Body paragraph 1**: על כולנו יושבות בעיות שלא מרפות מהחשיבה היומיומית. התלבטויות מייסרות המופיעות בצמתים שונים של זירות החיים ויוצרות תסכול ודכדוך.
- **Body paragraph 2**: תוך שיחות בודדות, נבנה ביחד תוכנית יציאה מהמשבר, שתסלק את עננת המועקה ותביא אותך לפריצת דרך.

### About Section
- **Name**: גלית גרנות
- **Bio**: מגשרת, יועצת לתקשורת וניהול ומאמנת אישית מוסמכת, בעלת ניסיון ומומחיות באלפי שיחות ייעוץ והכוונה המלוות אנשים פרטיים ועובדים במערכות ארגוניות גדולות בישראל בניהול משברים אישיים.

### Contact Form Section
- **Heading**: ?רוצים לשוחח
- **Fields**:
  - שם פרטי (first name, required)
  - שם משפחה (last name, required)
  - אימייל (email, required)
  - סלפון (phone)
  - הערות (לא חובה) (notes, optional)
- **Submit**: שליחה
- **Success message**: נדבר בקרוב

### FAQ Page Content (5 items, accordion style)
1. **?מה זו ״שעת שיחה״** — תהליך הכוונה בן שלושה מפגשים, שבמסגרתו נאבחן את הבעיות שמטרידות את שגרת החיים שלך ונבנה תוכנית שתביא לפריצת דרך בנושא.
2. **?למי השירות מתאים** — שעת שיחה יכולה לעזור למפות בצורה טובה יותר צמתים של התלבטות וסוגיות שמטרידות את כולנו בחיי היומיום. השירות מתאים לכל אדם בוגר המצוי בהתלבטות בחיים האישיים והבינאישיים.
3. **?איך זה עובד** — במהלך שלוש פגישות של כשעה נאבחן ונדייק את הבעיה, נבין כיצד ניתן להגיע לשינוי ונבנה תוכנית עבודה לצורך פריצת דרך - בין אם באמצעות הפניה למומחה ספציפי או המשך עבודה עצמית. הפגישות נערכות פנים אל פנים במקום לבחירתך.
4. **?מה אשיג בתהליך** — הקשבה לבעיה, הכוונה מנוסה ומקצועית וידיעה לאן להמשיך מכאן כדי לפתור את הבעיה או להקל עליה באופן משמעותי.
5. **?כמה השירות עולה** — נשמח להסביר על עלות השירות בשיחת טלפון. השאירו פרטים בטופס באתר ונהיה בקשר.

### Navigation Links
- עמוד ראשי → index.html
- שאלות ותשובות → faq.html
- צור קשר → index.html#contact

## JS Functionality
- Sticky white navbar
- Mobile hamburger menu toggle
- Active nav link highlighting
- FAQ accordion with chevron rotation (one open at a time)
- Scroll-reveal animations (subtle)
- Contact form validation + success state

## TODO
- [ ] Download all 5 images locally into images/
- [ ] Create index.html (homepage with hero, about, contact)
- [ ] Create faq.html (FAQ page)
- [ ] Create css/style.css
- [ ] Create js/main.js
- [ ] Recreate line-art illustrations as inline SVG if not in downloaded images
- [ ] Wire up contact form with Formspree or Web3Forms for actual email delivery
- [ ] Deploy to free hosting (Netlify, Cloudflare Pages, or GitHub Pages)
- [ ] Point shatsicha.com domain to new host

## Hosting Plan
Free static hosting (Netlify/Cloudflare Pages/GitHub Pages) + existing domain. Target: $0/month hosting vs current Wix subscription.

## Design Reference
Screenshots of the original Wix site were taken on March 10, 2026. The design is soft, calming, and professional with a consistent light steel blue (#B0C8DA) color scheme. The key signature elements are the line-art furniture illustrations and the heart-shaped logo with two face profiles.
