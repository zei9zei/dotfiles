-- when and how to display the sign column (yes = always)
vim.o.signcolumn = "yes"

-- highlight the screen line of the cursor
vim.o.cursorline = true

-- minimum nr. of lines above and below cursor
vim.o.scrolloff = 10

-- Preview substitutions live, as you type!
vim.opt.inccommand = "split"

-- Show relative and absolute line number
vim.o.number = true
vim.o.relativenumber = true

-- Split to right and below
vim.o.splitbelow = true
vim.o.splitright = true

-- take indent for new line from previous line
vim.o.autoindent = true

-- :help clipboard-wsl
vim.cmd([[
    let g:clipboard = {
                \   'name': 'WslClipboard',
                \   'copy': {
                \      '+': 'clip.exe',
                \      '*': 'clip.exe',
                \    },
                \   'paste': {
                \      '+': 'pwsh.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
                \      '*': 'pwsh.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
                \   },
                \   'cache_enabled': 0,
                \ }
]])
