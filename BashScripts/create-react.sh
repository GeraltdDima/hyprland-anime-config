#!/bin/bash

echo "What is your project name?"
read name

npm create vite@latest "$name" -- --template react

cd "$name"
npm install

rm ./src/App.css
rm -r ./src/assets

cat /home/dima/.vite/index.css > ./src/index.css
cat /home/dima/.vite/App.jsx > ./src/App.jsx
