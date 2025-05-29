return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',

    dependencies = { 'nvim-lua/plenary.nvim' },

    opts = function() return {
      extensions = {
        ["ui-select"] = {
          require("telescope.themes").get_dropdown {}
        }
      }
    } end,

    keys = {
      { "<Leader>ff", ":Telescope find_files<Enter>", desc = "Open fuzzy finder" },
      { "<Leader>fg", ":Telescope live_grep<Enter>", desc = "Open live grep" }
    }
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").load_extension("ui-select")
    end
  }
}
