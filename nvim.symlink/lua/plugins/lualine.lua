return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      local lualine = require("lualine")
      lualine.setup({
        sections = {
          lualine_c = {
            'filename',
          },
        },
        winbar = {
          -- display full path relative to cwd at the top
          lualine_c = { function() return vim.fn.expand('%:.') end }
        }
      })
    end,
}
