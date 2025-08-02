return {
  "folke/flash.nvim",
  event = "VeryLazy",
  opts = {
    modes = { 
      search = {
        enabled = true
      },
      char = {
        jump_labels = true
      } 
    }
  },
  keys = {
    {
      "r", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash"
    },
    {
      "r", mode = { "o" }, function() require("flash").remote() end, desc = "Flash (remote)"
    }
  }
}
