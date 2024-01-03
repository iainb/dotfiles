return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local telescope = require("telescope")

    telescope.setup({
      defaults = {
        file_ignore_patterns = { "node_modules", "%.parquet$", "%.svg$", "htmlcov"},
      }
    })

    telescope.load_extension("fzf")

    vim.keymap.set("n", "<leader>o", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
    vim.keymap.set("n", "<leader>p", "<cmd>Telescope live_grep<cr>", { desc = "Grep for files in cwd" })
  end,
}
