-- https://github.com/LazyVim/LazyVim/issues/3088
return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      bind_to_cwd = true,
    },
  },
}
