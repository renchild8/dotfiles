#!/bin/zsh

echo "=== Homebrew セットアップ開始 ==="

# Homebrew インストール（未インストール時のみ）
if ! command -v brew >/dev/null 2>&1; then
  echo "Homebrew をインストールしています..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

echo "=== brew update / upgrade ==="
brew update
brew upgrade

echo "=== CLI Tools (Formula) インストール ==="
brew install tree
brew install jq
brew install yq
brew install gh

echo "=== Dev Tools / Productivity Apps (Cask) インストール ==="
brew install --cask xcodes
brew install --cask warp
brew install --cask claude-code
brew install --cask visual-studio-code
brew install --cask docker
brew install --cask slack
brew install --cask proxyman     # ネットワーク・API デバッグ
brew install --cask typora       # Markdown エディタ
brew install --cask gpg-suite     # GPG Tools（署名・暗号化）
brew install --cask chatgpt-atlas    # ChatGPT Atlas ブラウザ
brew install --cask notion
brew install --cask google-chrome
brew install --cask fork

echo "=== Design / Assets Tools ==="
brew install --cask figma

echo "=== キャッシュ削除 / 最終確認 ==="
brew cleanup

echo "=== セットアップ完了！ ==="
