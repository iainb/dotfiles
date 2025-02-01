return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects",
    },
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "lua", "python", "php" }, -- Add more as needed
        highlight = { enable = true },
        indent = { enable = true },
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = "<Enter>", -- Start selection
            node_incremental = "<Enter>", -- Expand selection
            scope_incremental = "<Tab>", -- Expand by scope
            node_decremental = "<BS>", -- Shrink selection
          },
        },
        textobjects = {
          select = {
            enable = true,
            lookahead = true, -- Automatically jump forward to textobj
            keymaps = {
              ["af"] = "@function.outer", -- Select entire function
              ["if"] = "@function.inner", -- Select inside function
              ["ac"] = "@class.outer", -- Select entire class
              ["ic"] = "@class.inner", -- Select inside class
              ["ab"] = "@block.outer", -- Select entire block (if, loops, etc.)
              ["ib"] = "@block.inner", -- Select inside block
            },
          },
          move = {
            enable = true,
            set_jumps = true, -- Add jumps to the jumplist
            goto_next_start = {
              ["]m"] = "@function.outer",
              ["]c"] = "@class.outer",
            },
            goto_next_end = {
              ["]M"] = "@function.outer",
              ["]C"] = "@class.outer",
            },
            goto_previous_start = {
              ["[m"] = "@function.outer",
              ["[c"] = "@class.outer",
            },
            goto_previous_end = {
              ["[M"] = "@function.outer",
              ["[C"] = "@class.outer",
            },
          },
        },
      })
    end,
  }
}
