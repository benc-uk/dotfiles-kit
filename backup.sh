#!/bin/bash

random_icon() {
  icons=("🍎" "🍊" "🍋" "🍌" "🍉" "🍇" "🍓" "🍒" "🍑" "🍍" "🥝" "🍅" "🍆" "🥑" "🥦" "🥒" "🥬" "🥭" "🥔" "🥕" "🌽" "🌶" "🌶️" "🫐" "🥥" "🍄")
  echo "${icons[$((RANDOM % ${#icons[@]}))]}"
}

DIR="$( cd "$( dirname "$BASH_SOURCE" )" && pwd )"
cd "$DIR" || exit

echo -e "\e[34m»»» 📦 \e[32mBacking up your dotfiles safely to GitHub\e[0m"

git add .
git commit -m "$(random_icon) $(date)"
git push
