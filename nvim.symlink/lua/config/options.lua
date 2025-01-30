
vim.opt.number = true -- enable line numbers

-- tabs & indentation
vim.opt.tabstop = 4 -- 4 spaces for tabs (prettier default)
vim.opt.shiftwidth = 4 -- 4 spaces for indent width
vim.opt.softtabstop = 4   -- Make backspace treat tab as 4 spaces
vim.opt.expandtab = true -- expand tab to spaces
vim.opt.autoindent = true -- copy indent from current line when starting new one
vim.opt.smartindent = true -- Enable smart indentation

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "lua" }, -- These normally use tabs
  callback = function()
    vim.opt.tabstop = 2
    vim.opt.shiftwidth = 2
    vim.opt.softtabstop = 2
  end,
})

-- line wrapping
vim.opt.wrap = true -- enable line wrapping

-- clipboard
vim.opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- turn off swapfile
vim.opt.swapfile = false

-- colorscheme
vim.opt.termguicolors = true


-- automatically remove training spaces before saving
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  command = [[%s/\s\+$//e]],
})

-- add column at 80 chrs
vim.opt.colorcolumn = "81"
vim.api.nvim_set_hl(0, "ColorColumn", { ctermbg = 8, bg = "#3d3d3d" })


vim.cmd [[colorscheme desert]]

