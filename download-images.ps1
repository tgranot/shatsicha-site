# ──────────────────────────────────────────────
# שעת שיחה — Image Downloader (Windows)
# Run this script from inside the shatsicha-site folder:
#   Right-click → Run with PowerShell
# ──────────────────────────────────────────────

New-Item -ItemType Directory -Force -Path "images" | Out-Null

$files = @(
    @{ Name = "logo.png";        Url = "https://static.wixstatic.com/media/e3a329_44a32735409845159529e06b5916ede5~mv2.png/v1/fill/w_310,h_172,al_c,q_85,usm_0.66_1.00_0.01,enc_avif,quality_auto/%D7%9D%D7%9C%D7%A8%20logo.png" },
    @{ Name = "logo-white.png";  Url = "https://static.wixstatic.com/media/e3a329_a1259fcf8fe545b7819e358a9c650a96~mv2.png/v1/fill/w_290,h_162,al_c,q_85,usm_0.66_1.00_0.01,enc_avif,quality_auto/%D7%9D%D7%9C%D7%A8%20logo%20white_1.png" },
    @{ Name = "portrait.jpg";    Url = "https://static.wixstatic.com/media/e3a329_0a6a362206ed44839c66d815828e5885~mv2.jpg/v1/fill/w_690,h_690,al_c,q_85,usm_0.66_1.00_0.01,enc_avif,quality_auto/TOM_7179.jpg" },
    @{ Name = "hero-bg.jpg";     Url = "https://static.wixstatic.com/media/e3a329_f369b3df3c614cbb8c0defb2edcdffb9f000.jpg/v1/fill/w_1920,h_900,al_c,q_85,usm_0.66_1.00_0.01,enc_avif,quality_auto/e3a329_f369b3df3c614cbb8c0defb2edcdffb9f000.jpg" },
    @{ Name = "contact-bg.jpg";  Url = "https://static.wixstatic.com/media/e3a329_5ce757cae6ce4944b5d006f760145b84f000.jpg/v1/fill/w_1920,h_900,al_c,q_85,usm_0.66_1.00_0.01,enc_avif,quality_auto/e3a329_5ce757cae6ce4944b5d006f760145b84f000.jpg" }
)

foreach ($file in $files) {
    Write-Host "Downloading $($file.Name)..."
    Invoke-WebRequest -Uri $file.Url -OutFile "images/$($file.Name)"
}

Write-Host ""
Write-Host "All images downloaded!" -ForegroundColor Green
Get-ChildItem images/ | Format-Table Name, Length -AutoSize
Write-Host "You can now open index.html in your browser."
Pause
