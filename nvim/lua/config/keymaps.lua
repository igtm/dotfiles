-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local opts = { noremap = true, silent = true }
--------------------------------
-- VIM DEFAUL KEYMAP SETTINGS --
--------------------------------
-- escape with jj
vim.keymap.set("i", "jj", "<ESC>", opts)
-- select all
vim.keymap.set("n", "<C-a>", "gg<S-v>G", opts)
-- no register
vim.keymap.set("n", "c", '"_c', opts)
-- no shift key
-- vim.keymap.set("n", ";", ":", opts)
-- start line / end line
vim.keymap.set("n", "a", "^", opts)
vim.keymap.set("n", ";", "$", opts)
-- Split window
vim.keymap.set("n", "sd", "<C-W>c", opts)
vim.keymap.set("n", "ss", "<C-W>s", opts)
vim.keymap.set("n", "sv", "<C-W>v", opts)
vim.keymap.set("n", "sh", "<C-W>h", opts)
vim.keymap.set("n", "sl", "<C-W>l", opts)
vim.keymap.set("n", "sj", "<C-W>j", opts)
vim.keymap.set("n", "sk", "<C-W>k", opts)
vim.keymap.set("n", "gl", "<CMD>BufferLineCycleNext<CR>", opts)
vim.keymap.set("n", "gh", "<CMD>BufferLineCyclePrev<CR>", opts)
vim.keymap.set("n", "gb", "<C-o>", opts)
-- Find and Replace in file
vim.keymap.del("v", "<C-f>")
vim.keymap.set("v", "<C-f>", '"vy/<C-r>v<CR>', opts)
vim.keymap.set("v", "<C-r>", '"vy:%s/<C-r>v/', opts)
-- diffview.nvim
-- https://github.com/sindrets/diffview.nvim/issues/450#issuecomment-1883102852
vim.keymap.set("n", "gv", function()
  local lib = require("diffview.lib")
  local view = lib.get_current_view()
  if view then
    -- Current tabpage is a Diffview; close it
    vim.cmd.DiffviewClose()
  else
    -- No open Diffview exists: open a new one
    vim.cmd.DiffviewOpen()
  end
end, opts)
-- Compare window buffer
vim.keymap.set("n", "sw", "<CMD>windo diffthis<CR>", opts)

--------------------------------
-- LazyVim Plugins OVERRIDE ----
--------------------------------
-- remap flash-nvim s -> f
vim.keymap.del("n", "f")
vim.keymap.del("n", "F")
vim.keymap.set("n", "f", function()
  require("flash").jump()
end, { silent = true, desc = "Flash" })
vim.keymap.set("n", "F", function()
  require("flash").treesitter()
end, { silent = true, desc = "Flash Treesitter" })
