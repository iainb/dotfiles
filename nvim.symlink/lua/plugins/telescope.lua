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
        file_ignore_patterns = { "node_modules", "%.parquet$", "%.svg$", "htmlcov", "venv", "__pycache__"},
        layout_config = {
          horizontal = {
            width = 0.9,       -- Set width to 90% of the screen width
            preview_width = 0.4,  -- Set preview width (optional)
          },
          vertical = {
            width = 0.8,       -- Set width to 80% of the screen width for vertical layout
          },
	    },
        layout_strategy = 'horizontal',
      }
    })

    telescope.load_extension("fzf")

    vim.keymap.set("n", "<leader>o", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
    vim.keymap.set("n", "<leader>p", "<cmd>Telescope live_grep<cr>", { desc = "Grep for files in cwd" })
    vim.keymap.set("n", "<leader>[", "<cmd>Telescope buffers<cr>", { desc = "Select open buffers" })
  end,
}
