# dotfiles

Ghostty + zellij ベースの軽量CLI開発環境。

## 含まれるツール

| ツール | 用途 |
|---|---|
| Ghostty | ターミナルエミュレータ |
| zellij | ターミナルマルチプレクサ |
| yazi | ファイルマネージャ |
| lazygit | Git TUI |
| fzf | ファジーファインダー |
| ripgrep | 高速検索 |
| starship | プロンプト |
| delta | diff ビューア |
| fd, zoxide | ファイル検索・ディレクトリジャンプ |

## セットアップ

```bash
git clone https://github.com/sho0126/dotfiles.git ~/dotfiles
cd ~/dotfiles
chmod +x install.sh
./install.sh
source ~/.zshrc
```

## 使い方

```bash
dev    # 4ペイン開発環境を起動 (yazi / editor / claude / lazygit)
```

## レイアウト

```
┌──────────┬──────────────┬─────────────┐
│          │              │   claude     │
│  yazi    │   editor     │   (ai)      │
│  (files) │              ├─────────────┤
│   20%    │    80%       │   lazygit   │
│          │   [focus]    │   (git)     │
└──────────┴──────────────┴─────────────┘
    ←───── 60% ─────→     ←── 40% ──→
```
