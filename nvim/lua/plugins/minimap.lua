return {
  "wfxr/minimap.vim",
  build = "cargo install --locked code-minimap",
  cmd = { "Minimap", "MinimapClose", "MinimapToggle", "MinimapRefresh", "MinimapUpdateHighlight" },
  keys = {
    { "<leader>mm", "<cmd>MinimapToggle<cr>", desc = "Minimapトグル" },
  },
  config = function()
    -- minimapの幅設定
    vim.g.minimap_width = 10
    -- minimapのウィンドウ幅設定
    vim.g.minimap_auto_start = 1
    -- minimapのハイライト範囲設定
    vim.g.minimap_auto_start_win_enter = 1
  end,
}
