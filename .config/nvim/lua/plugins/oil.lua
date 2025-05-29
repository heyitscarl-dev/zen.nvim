return {
  'stevearc/oil.nvim',
  dependencies = { 
    { "echasnovski/mini.icons", opts = {} },
  },
  opts = {
    default_file_explorer = true,
    skip_confirm_for_simple_edits = true,
    view_options = {
      show_hidden = true,
    }
  },
  lazy = false,
  keys = {
    { "-", ":Oil<Enter>", desc = "View parent folder" }
  }
}
