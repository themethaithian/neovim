return {
  "christoomey/vim-tmux-navigator",
  vim.keymap.set("n", "C-h", ":TmuxNavigateLeft<CR>", { desc = "Navigate Left" }),
  vim.keymap.set("n", "C-j", ":TmuxNavigateDown<CR>", { desc = "Navigate Down" }),
  vim.keymap.set("n", "C-k", ":TmuxNavigateUp<CR>", { desc = "Navigate Up" }),
  vim.keymap.set("n", "C-l", ":TmuxNavigateRight<CR>", { desc = "Navigate Right" }),
}
