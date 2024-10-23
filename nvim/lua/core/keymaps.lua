vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clean highlight", silent = true })
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

vim.keymap.set("n", "]b", ":bn<cr>", { desc = "Go next buffer" })
vim.keymap.set("n", "[b", ":bp<cr>", { desc = "Go previous buffer" })

vim.keymap.set("n", "<C-v>", "<C-w>v", { desc = "Split window vertically" })
vim.keymap.set("n", "<C-s>", "<C-w>s", { desc = "Split window horizontally" })
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Focus left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Focus below window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Focus above window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Focus right window" })
vim.keymap.set("n", "<C-down>", ":resize -2<CR>", { desc = "Resize window down" })
vim.keymap.set("n", "<C-up>", ":resize +2<CR>", { desc = "Resize window up" })
vim.keymap.set("n", "<C-left>", ":vertical resize -2<CR>", { desc = "Resize window left" })
vim.keymap.set("n", "<C-right>", ":vertical resize +2<CR>", { desc = "Resize window right" })
vim.keymap.set("n", "<C-e>", "<C-w>=", { desc = "Make splits equal size" })
vim.keymap.set("n", "<C-x>", "<C-w>q", { desc = "Close split" })

vim.keymap.set("v", ">", ">gv", { desc = "After tab in re-select the same" })
vim.keymap.set("v", "<", "<gv", { desc = "After tab out re-select the same" })

vim.keymap.set("n", "n", "nzzzv", { desc = "Goes to the next result on the seach and put the cursor in the middle" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Goes to the prev result on the seach and put the cursor in the middle" })

vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up and center" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down and center" })

-- ui mappings
vim.keymap.set("n", "<leader>uw", ":set wrap!<CR>", { desc = "Toggle line wrap" })
vim.keymap.set("n", "<leader>ur", ":set relativenumber!<CR>", { desc = "Toggle relative line number" })
vim.keymap.set("n", "<leader>un", ":set number!<CR>", { desc = "Toggle line number" })

-- Quickfix
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open buffer [Q]uickfix list" })
vim.keymap.set("n", "<leader>Q", vim.diagnostic.setqflist, { desc = "Open [Q]uickfix list" })
vim.keymap.set("n", "]d", ":cnext<CR>", { desc = "Go next quickfix item" })
vim.keymap.set("n", "[d", ":cprev<CR>", { desc = "Go previous quickfix item" })

-- Plugins
vim.keymap.set("n", "<leader>l", ":Lazy<CR>", { desc = "Open [L]azy UI" })
vim.keymap.set("n", "<leader>cm", ":Mason<CR>", { desc = "Open [M]ason UI" })
