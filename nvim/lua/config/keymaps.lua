-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "n", "nzz", { desc = "Next search item and center", silent = true })
vim.keymap.set("n", "N", "Nzz", { desc = "Previous search item and center", silent = true })
