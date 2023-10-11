#!/usr/bin/env sh

rm -rf dist &&
yarn build &&
cd dist &&
git init &&
git add . &&
git commit -m "update" &&
git branch -M main &&
git remote add origin git@github.com:webpanck/big-screen-react-preview.git &&
git push -f -u origin main &&
cd -
