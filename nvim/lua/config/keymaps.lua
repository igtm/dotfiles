-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local opts = { noremap = true, silent = true }
--------------------------------
-- VIM デフォルトキーマップ設定 --
--------------------------------
-- jjでESCする
vim.keymap.set("i", "jj", "<ESC>", { noremap = true, silent = true, desc = "インサートモードから抜ける" })
-- 全選択
vim.keymap.set("n", "<C-a>", "gg<S-v>G", { noremap = true, silent = true, desc = "全テキスト選択" })
-- レジスタを使わない削除
vim.keymap.set("n", "c", '"_c', { noremap = true, silent = true, desc = "レジスタを使わない削除" })
-- シフトキーなしでコマンド
-- vim.keymap.set("n", ";", ":", opts)
-- 行頭/行末への移動
vim.keymap.set("n", "a", "^", { noremap = true, silent = true, desc = "行頭へ移動" })
vim.keymap.set("n", ";", "$", { noremap = true, silent = true, desc = "行末へ移動" })
-- ウィンドウ分割
vim.keymap.set("n", "sd", "<C-W>c", { noremap = true, silent = true, desc = "ウィンドウを閉じる" })
vim.keymap.set("n", "ss", "<C-W>s", { noremap = true, silent = true, desc = "水平分割" })
vim.keymap.set("n", "sv", "<C-W>v", { noremap = true, silent = true, desc = "垂直分割" })
vim.keymap.set("n", "sh", "<C-W>h", { noremap = true, silent = true, desc = "左のウィンドウへ移動" })
vim.keymap.set("n", "sl", "<C-W>l", { noremap = true, silent = true, desc = "右のウィンドウへ移動" })
vim.keymap.set("n", "sj", "<C-W>j", { noremap = true, silent = true, desc = "下のウィンドウへ移動" })
vim.keymap.set("n", "sk", "<C-W>k", { noremap = true, silent = true, desc = "上のウィンドウへ移動" })
-- バッファ操作
vim.keymap.set(
  "n",
  "gl",
  "<CMD>BufferLineCycleNext<CR>",
  { noremap = true, silent = true, desc = "次のバッファへ移動" }
)
vim.keymap.set(
  "n",
  "gh",
  "<CMD>BufferLineCyclePrev<CR>",
  { noremap = true, silent = true, desc = "前のバッファへ移動" }
)
vim.keymap.set("n", "gb", "<C-o>", { noremap = true, silent = true, desc = "前の位置に戻る" })
-- ファイル内検索と置換
vim.keymap.del("v", "<C-f>")
vim.keymap.set("v", "<C-f>", '"vy/<C-r>v<CR>', { noremap = true, silent = true, desc = "選択テキストで検索" })
vim.keymap.set("v", "<C-r>", '"vy:%s/<C-r>v/', { noremap = true, silent = true, desc = "選択テキストで置換" })
-- diffview.nvim
-- https://github.com/sindrets/diffview.nvim/issues/450#issuecomment-1883102852
vim.keymap.set("n", "gv", function()
  local lib = require("diffview.lib")
  local view = lib.get_current_view()
  if view then
    -- 現在のタブページはDiffviewなので閉じる
    vim.cmd.DiffviewClose()
  else
    -- 開いているDiffviewがないので新しく開く
    vim.cmd.DiffviewOpen()
  end
end, { noremap = true, silent = true, desc = "Diffviewの切り替え" })
-- ウィンドウバッファの比較
vim.keymap.set(
  "n",
  "sw",
  "<CMD>windo diffthis<CR>",
  { noremap = true, silent = true, desc = "ウィンドウ間のdiff比較" }
)

--------------------------------
-- LazyVimプラグインのオーバーライド --
--------------------------------
-- flash-nvimのキーをs -> fに変更
vim.keymap.del("n", "f")
vim.keymap.del("n", "F")
vim.keymap.set("n", "f", function()
  require("flash").jump()
end, { silent = true, desc = "フラッシュジャンプ" })
vim.keymap.set("n", "F", function()
  require("flash").treesitter()
end, { silent = true, desc = "ツリーシッターでフラッシュナビゲーション" })
