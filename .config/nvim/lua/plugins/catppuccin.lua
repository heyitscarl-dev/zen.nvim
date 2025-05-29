return {
  "catppuccin/nvim",
  name = "catppuccin.nvim",
  lazy = false,
  opts = {
    flavour = "mocha"
  },
  config = function(_, opts)
    require("catppuccin").setup(opts)
    vim.cmd.colorscheme("catppuccin")
  end
}
