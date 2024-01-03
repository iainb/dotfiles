
vim.opt.number = true -- enable line numbers

-- tabs & indentation
vim.opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
vim.opt.shiftwidth = 2 -- 2 spaces for indent width
vim.opt.expandtab = true -- expand tab to spaces
vim.opt.autoindent = true -- copy indent from current line when starting new one

-- line wrapping
vim.opt.wrap = false -- disable line wrapping

-- clipboard
vim.opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- turn off swapfile
vim.opt.swapfile = false

-- colorscheme
vim.opt.termguicolors = true


vim.cmd [[colorscheme desert]]
