return {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      automatic_enable = true
    },
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
    config = function(_, opts)
      vim.diagnostic.config({
        virtual_text = true,
      })
      require("mason-lspconfig").setup(opts)
    end,
    keys = {
      { "K", vim.lsp.buf.hover, desc = "View hover menu" },
      { "<Leader>gd", vim.lsp.buf.definition, desc = "Go to definition" },
      { "<Leader>ca", vim.lsp.buf.code_action, desc = "View code actions" },
    },
    lazy = false
}
