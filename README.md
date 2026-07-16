# 🏆 BEYBLADE X Milo Cup 賽程排程器

這是一個專為戰鬥陀螺 BEYBLADE X 比賽打造的復古卡通風格賽程排程與電子計分網頁。本專案目前已全面升級，支援**多房獨立運作**與**免改代碼自定義資料庫**，讓任何玩家都能輕鬆開辦屬於自己的戰鬥陀螺大會！

![Milo Cup Banner](https://img.shields.io/badge/BEYBLADE%20X-Milo%20Cup-cc3333?style=for-the-badge)
![HTML5](https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white)
![TailwindCSS](https://img.shields.io/badge/TailwindCSS-38B2AC?style=for-the-badge&logo=tailwind-css&logoColor=white)
![Firebase](https://img.shields.io/badge/Firebase-FFCA28?style=for-the-badge&logo=firebase&logoColor=black)

---

## ✨ 核心特色與升級功能

1. **🎨 經典 1930s 橡皮管卡通視覺風格**
   - 採用復古黃金配色、厚重墨汁邊框與粗重陰影。
   - 帶有老電影膠卷噪點的動態背景，搭配滑稽逗趣的標題搖擺動畫 (`animate-wobble`)。

2. **🔑 自定義 Firebase 伺服器 (⚙️ 設定)**
   - 點選右上角的 **⚙️ 設定** 按鈕，即可在網頁直接填入您專屬的 Firebase Web App 設定。
   - 儲存後將存入 `localStorage` 並重新載入。**完全不需要編輯任何代碼**，就能擁有您專屬的雲端伺服器！

3. **🌍 多房間/多賽事獨立系統 (`?t=賽事ID`)**
   - 網頁支援動態賽事 ID，例如：`index.html?t=milocup_2026`。
   - 不同 ID 的賽程數據在 Firebase 中完全獨立隔離，多人同時開賽不再互相覆蓋！

4. **🔗 一鍵複製分享連結**
   - 當賽程建立後，點選標題下方的 **🔗 分享賽程** 按鈕，即可自動將專屬的參賽連結複製到剪貼簿。
   - 參賽者點開連結即可進入「選手儀表板」，即時追蹤自己的下一場賽事與目前積分。

5. **⚔️ 電子即時計分板**
   - 支援先得 4 / 5 / 7 分等勝負條件。
   - 點擊巨大數字可直接 +1 分，並配備「轉停獲勝 (+1)」、「爆裂/擊飛 (+2)」、「極限擊殺 (+3)」快捷鍵。
   - 選手得分時，整個卡片會閃爍綠色提示 (`score-changed` 動畫)，更具動感！

---

## 💻 本地測試與啟動

因為網頁包含 ES Module 與 Firebase 連線，直接雙擊 `index.html` 開啟可能會因為瀏覽器安全限制 (CORS) 無法正常運作。請使用簡易的本地 HTTP 伺服器開啟：

### 使用 Python 啟動（推薦，已內建）：
1. 在本目錄開啟終端機（PowerShell / Command Prompt）。
2. 執行以下指令：
   ```bash
   python -m http.server 8000
   ```
3. 在瀏覽器開啟：[http://localhost:8000](http://localhost:8000)

---

## 🚀 如何將後續修改推送到您的 GitHub

在終端機中，切換到本資料夾並依序執行以下指令，即可同步更新到 GitHub：
```bash
# 1. 初始化 Git
git init

# 2. 加入所有檔案
git add .

# 3. 建立首次提交
git commit -m "feat: migrate and enhance Milo Cup Scheduler web app"

# 4. 將分支重新命名為 main
git branch -M main

# 5. 設定您的新 GitHub 遠端儲存庫
git remote add origin https://github.com/davisho1117/milo_cup.git

# 6. 推送代碼至 GitHub (會彈出視窗要求登入授權)
git push -u origin main
```

---

## 🌐 部署為真正的網頁 (GitHub Pages 免費託管)

將代碼推送至您的 GitHub 儲存庫後，請照以下步驟開啟 GitHub Pages，讓所有人都能使用該網頁：

1. 前往您的 GitHub 專案頁面：`https://github.com/davisho1117/milo_cup`。
2. 點選上方的 **⚙️ Settings** (設定) 頁籤。
3. 在左側選單中找到 **Pages**。
4. 在 **Build and deployment** 下方的 **Source** 選擇 `Deploy from a branch`。
5. 在 **Branch** 選單中，將其設定為 `main` 分支，並將目錄設定為 `/ (root)`，然後點選 **Save** (儲存)。
6. 等待約 1~2 分鐘後，刷新頁面。GitHub 會在上方顯示您的網頁連結，格式通常為：
   👉 **`https://davisho1117.github.io/milo_cup/`**

現在，只需將該網址發送給參賽者，大會就能順暢舉行了！