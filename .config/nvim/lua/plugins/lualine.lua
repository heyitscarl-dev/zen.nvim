return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 
      { 'echasnovski/mini.nvim' },    -- for mini.icons
      { "catppuccin/nvim", name = "catppuccin.nvim" }
    },
    opts = function()
      local lualine_theme = require("lualine.themes.catppuccin")

      lualine_theme.normal.c.bg = "#1e1e2e"   -- catppuccin mocha specific

      return {
        options = {
          theme = lualine_theme
        }
      }
    end,
    config = function(_, opts)
      require("lualine").setup(opts)
    end
}
