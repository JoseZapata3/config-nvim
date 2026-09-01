return {
  {
    "mason-org/mason.nvim",
    opts = {},
    config = function()
      require("mason").setup()
    end
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {},
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
    config = function()
      require("mason-lspconfig").setup {
          ensure_installed = { "lua_ls", "ts_ls", "pylsp", "postgres_lsp" },
      }
    end
  },
  {
  "neovim/nvim-lspconfig",
  config = function()
      vim.lsp.config("lua_ls", {
        settings = {
            Lua = {
                  diagnostics = {
                      globals = { "vim" },
                  },
              },
          },
      })
      vim.lsp.enable("lua_ls")
      vim.lsp.enable("ts_ls")
      vim.lsp.enable("pylsp")
      vim.lsp.enable("postgres_lsp")

      vim.keymap.set('n', 'K', vim.lsp.buf.hover,{})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action,{})
    end
  }
}
