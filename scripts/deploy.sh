#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
yarn run build

# 进入生成的文件夹
cd blog/.vuepress/dist

git init
git add -A
git commit -m 'deploy'

# 如果发布到 https://<USERNAME>.github.io  填写你刚刚创建的仓库地址
git push -f https://github.com/han-chao/han-chao.github.io.git master

cd -