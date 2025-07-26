# 🚀 LazyVim 設定ガイド

このリポジトリは [LazyVim](https://github.com/LazyVim/LazyVim) をベースにした Neovim の設定です。

## 📋 目次

- [インストール方法](#インストール方法)
- [基本操作](#基本操作)
- [カスタムキーマップ](#カスタムキーマップ)
- [プラグイン管理](#プラグイン管理)
- [LazyVim のアップデート方法](#lazyvim-のアップデート方法)
- [追加設定](#追加設定)

## 🔧 インストール方法

1. このリポジトリをクローン:
   ```bash
   git clone https://github.com/igtm/dotfiles.git ~/.dotfiles
   ```

2. シンボリックリンクを作成:
   ```bash
   ln -s ~/.dotfiles/nvim ~/.config/nvim
   ```

3. Neovim を起動すると、自動的に LazyVim と設定されたプラグインがインストールされます:
   ```bash
   nvim
   ```

## 🎮 基本操作

### 一般的な操作

| キー | 説明 |
| --- | --- |
| `<Space>` | リーダーキー |
| `jj` | インサートモードから抜ける (ESC) |
| `<C-a>` | すべて選択 |
| `a` | 行の先頭へ移動 |
| `;` | 行の末尾へ移動 |

### ファイル操作

| キー | 説明 |
| --- | --- |
| `<Space>ff` | ファイル検索 |
| `<Space>fr` | 最近使ったファイル |
| `<Space>fg` | ライブ grep 検索 |
| `<Space>e` | ファイルエクスプローラー |

### ウィンドウ操作

| キー | 説明 |
| --- | --- |
| `sd` | ウィンドウを閉じる |
| `ss` | 水平分割 |
| `sv` | 垂直分割 |
| `sh` | 左のウィンドウへ移動 |
| `sl` | 右のウィンドウへ移動 |
| `sj` | 下のウィンドウへ移動 |
| `sk` | 上のウィンドウへ移動 |
| `sw` | ウィンドウの diff 比較 |

### バッファ操作

| キー | 説明 |
| --- | --- |
| `gl` | 次のバッファへ移動 |
| `gh` | 前のバッファへ移動 |
| `gb` | 前の場所に戻る |

### 検索と置換

| キー | 説明 |
| --- | --- |
| `<C-f>` (ビジュアルモード) | 選択したテキストで検索 |
| `<C-r>` (ビジュアルモード) | 選択したテキストで置換 |

### Git 操作

| キー | 説明 |
| --- | --- |
| `gv` | Diffview の切り替え |
| `<Space>gg` | Lazygit を開く |

### カスタマイズされたプラグイン操作

| キー | 説明 |
| --- | --- |
| `f` | Flash.nvim でジャンプ |
| `F` | Flash.nvim の Treesitter ナビゲーション |

## 🔌 プラグイン管理

LazyVim は [lazy.nvim](https://github.com/folke/lazy.nvim) をプラグインマネージャとして使用しています。

### プラグイン管理コマンド

```bash
:Lazy             # Lazy.nvim UI を開く
:Lazy update      # すべてのプラグインを更新
:Lazy sync        # プラグインの同期 (更新+クリーン)
:Lazy clean       # 未使用のプラグインを削除
:Lazy check       # プラグインの状態をチェック
:Lazy log         # Lazy のログを表示
:Lazy restore     # 以前のプラグインバージョンに戻す
```

## 🔄 LazyVim のアップデート方法

1. Lazy.nvim UI を開く:
   ```vim
   :Lazy
   ```

2. LazyVim と全てのプラグインを更新:
   ```vim
   :Lazy update
   ```

3. 問題がある場合は、以前のバージョンに戻す:
   ```vim
   :Lazy restore
   ```

### プラグイン設定の更新

1. `lua/plugins/` ディレクトリ内のファイルを編集してカスタムプラグイン設定を変更します。

2. LazyVim の extras を有効にするには `lazyvim.json` を編集します。

## 🔧 追加設定

### 設定ファイルの構造

- `init.lua`: 起動設定
- `lua/config/lazy.lua`: Lazy.nvim と LazyVim の設定
- `lua/config/keymaps.lua`: カスタムキーマップ
- `lua/config/options.lua`: Neovim オプション
- `lua/config/autocmds.lua`: 自動コマンド
- `lua/plugins/`: プラグイン固有の設定

### カスタム設定を追加する方法

1. 既存のプラグインをカスタマイズする場合:
   - `lua/plugins/` に対応するファイルを作成または編集します。

2. 新しいプラグインを追加する場合:
   - `lua/plugins/` に新しいファイルを作成し、lazy.nvim の仕様に従ってプラグインを設定します。

3. オプションやキーマップをカスタマイズする場合:
   - `lua/config/options.lua` または `lua/config/keymaps.lua` を編集します。