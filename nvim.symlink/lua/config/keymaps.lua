vim.keymap.set("n", "<leader>.", "<cmd>bnext<CR>", { desc = "Go to next buffer" })
vim.keymap.set("n", "<leader>m", "<cmd>bprevious<CR>", { desc = "Go to previous buffer in order" })
vim.keymap.set("n", "<leader><leader>", "<cmd>buffer #<CR>", { desc = "Go to previous used buffer" })
