vim.cmd.colorscheme('vscode')

vim.opt.nu = true -- line numbers
vim.opt.relativenumber = true

vim.opt.hlsearch = false -- highlight search
vim.opt.incsearch = true -- incremental search

vim.opt.termguicolors = true

vim.opt.mouse = 'a' -- mouse mode all

vim.opt.scrolloff = 8 -- scroll offset

vim.opt.clipboard = 'unnamedplus' -- sync clipboard with os

vim.opt.breakindent = true

vim.opt.undofile = true -- save undo history

vim.opt.signcolumn = 'yes'

vim.o.updatetime = 250
vim.o.timeout = true
vim.o.timeoutlen = 300

vim.opt.completeopt = 'menuone,noselect'

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.swapfile = false
