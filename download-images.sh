#!/bin/bash
# ──────────────────────────────────────────────
# שעת שיחה — Image Downloader
# Run this script from inside the shatsicha-site folder
# It will download all images into the images/ folder
# ──────────────────────────────────────────────

mkdir -p images

echo "Downloading logo..."
curl -L -o images/logo.png \
  "https://static.wixstatic.com/media/e3a329_44a32735409845159529e06b5916ede5~mv2.png/v1/fill/w_310,h_172,al_c,q_85,usm_0.66_1.00_0.01,enc_avif,quality_auto/%D7%9D%D7%9C%D7%A8%20logo.png"

echo "Downloading white logo..."
curl -L -o images/logo-white.png \
  "https://static.wixstatic.com/media/e3a329_a1259fcf8fe545b7819e358a9c650a96~mv2.png/v1/fill/w_290,h_162,al_c,q_85,usm_0.66_1.00_0.01,enc_avif,quality_auto/%D7%9D%D7%9C%D7%A8%20logo%20white_1.png"

echo "Downloading portrait..."
curl -L -o images/portrait.jpg \
  "https://static.wixstatic.com/media/e3a329_0a6a362206ed44839c66d815828e5885~mv2.jpg/v1/fill/w_690,h_690,al_c,q_85,usm_0.66_1.00_0.01,enc_avif,quality_auto/TOM_7179.jpg"

echo "Downloading hero background..."
curl -L -o images/hero-bg.jpg \
  "https://static.wixstatic.com/media/e3a329_f369b3df3c614cbb8c0defb2edcdffb9f000.jpg/v1/fill/w_1920,h_900,al_c,q_85,usm_0.66_1.00_0.01,enc_avif,quality_auto/e3a329_f369b3df3c614cbb8c0defb2edcdffb9f000.jpg"

echo "Downloading contact background..."
curl -L -o images/contact-bg.jpg \
  "https://static.wixstatic.com/media/e3a329_5ce757cae6ce4944b5d006f760145b84f000.jpg/v1/fill/w_1920,h_900,al_c,q_85,usm_0.66_1.00_0.01,enc_avif,quality_auto/e3a329_5ce757cae6ce4944b5d006f760145b84f000.jpg"

echo ""
echo "✅ All images downloaded! Your folder structure:"
echo ""
ls -lh images/
echo ""
echo "You can now open index.html in your browser."
