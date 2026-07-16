# push_to_github.ps1
# This script guides and automates pushing the Milo Cup Scheduler repository to the new GitHub account.

Write-Host "==============================================" -ForegroundColor Cyan
Write-Host "   Milo Cup Scheduler - Git 搬遷與部署小助手" -ForegroundColor Cyan
Write-Host "==============================================" -ForegroundColor Cyan
Write-Host ""

# Check if Git is installed
$gitInstalled = $false
try {
    $version = git --version
    Write-Host "🟢 偵測到系統已安裝 Git: $version" -ForegroundColor Green
    $gitInstalled = $true
} catch {
    Write-Host "⚠️  注意: 系統 PATH 中未偵測到 'git' 指令！" -ForegroundColor Yellow
    Write-Host "請確認您是否已安裝 Git。如果已安裝，請使用 Git Bash 或確認 Git 已加入環境變數。" -ForegroundColor Yellow
    Write-Host "若未安裝，請至官方網站下載並安裝：https://git-scm.com/downloads" -ForegroundColor Yellow
    Write-Host ""
}

# If git is installed, offer to run initialization
if ($gitInstalled) {
    $choice = Read-Host "是否要在目前目錄初始化 Git 並設定遠端端點到 https://github.com/davisho1117-bot/milo_cup.git？ (Y/N)"
    if ($choice -eq "Y" -or $choice -eq "y") {
        Write-Host "1. 初始化 Git 儲存庫..." -ForegroundColor Cyan
        git init
        
        Write-Host "2. 加入專案檔案..." -ForegroundColor Cyan
        git add .
        
        Write-Host "3. 建立首次提交..." -ForegroundColor Cyan
        git commit -m "feat: migrate and enhance Milo Cup Scheduler web app"
        
        Write-Host "4. 設定分支為 main..." -ForegroundColor Cyan
        git branch -M main
        
        # Check if remote already exists, if so, remove it
        $remoteExists = git remote
        if ($remoteExists -contains "origin") {
            git remote remove origin
        }
        
        Write-Host "5. 設定新 GitHub 遠端路徑..." -ForegroundColor Cyan
        git remote add origin https://github.com/davisho1117-bot/milo_cup.git
        
        Write-Host ""
        Write-Host "✨ 本地 Git 初始化設定完成！" -ForegroundColor Green
        Write-Host "請執行以下指令將代碼推送至您的 GitHub (需要登入權限)：" -ForegroundColor Green
        Write-Host "👉  git push -u origin main" -ForegroundColor Yellow
    } else {
        Write-Host "已取消自動初始化。" -ForegroundColor Gray
    }
} else {
    Write-Host "=== 手動上傳指南 ===" -ForegroundColor Cyan
    Write-Host "如果您無法在終端機使用 Git，您可以："
    Write-Host "1. 開啟您的網頁瀏覽器，前往：https://github.com/new"
    Write-Host "2. 建立名為 'milo_cup' 的公開 (Public) 儲存庫。"
    Write-Host "3. 開啟 Git Bash (或您安裝的 Git 終端機)，切換到本資料夾："
    Write-Host "   cd '" + $PSScriptRoot + "'"
    Write-Host "4. 依序執行以下指令："
    Write-Host "   git init" -ForegroundColor Yellow
    Write-Host "   git add ." -ForegroundColor Yellow
    Write-Host "   git commit -m 'feat: migrate and enhance Milo Cup Scheduler'" -ForegroundColor Yellow
    Write-Host "   git branch -M main" -ForegroundColor Yellow
    Write-Host "   git remote add origin https://github.com/davisho1117-bot/milo_cup.git" -ForegroundColor Yellow
    Write-Host "   git push -u origin main" -ForegroundColor Yellow
}

Write-Host ""
Write-Host "按任意鍵結束本視窗..."
[void][System.Console]::ReadKey($true)
