#!/usr/bin/env sh
# 當發生錯誤時終止腳本運行
set -e
# 打包
npm run build
# 移動至到打包後的dist目錄
cd dist

# 因為dist資料夾預設是被ignore的，因此在進入dist資料夾後初始化git
git init
git add -A
git commit -m 'deploy'
# 部署到 https://github.com/chou0728/eric-project.git 分支為 gh-pages
git push -f https://github.com/tony86777525/vuedc.git master:gh-pages

# 將dist資料夾中的內容推送至遠端eric-project的gh-pages分支中，並強制無條件將舊有的內容取代成目前的內容（指令 git push -f)
cd

#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