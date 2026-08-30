return {
  {
    "mason-org/mason.nvim",
    opts = {
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
        }
      }
    }
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "lua_ls", "gopls" },
    }
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      vim.lsp.config('lua_ls', {
        capabilities = capabilities
      })
      vim.lsp.config('gopls', {
        capabilities = capabilities
      })

      vim.lsp.enable('lua_ls')
      vim.lsp.enable('gopls')

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.declaration, {})
      vim.keymap.set("n", "gD", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
      vim.keymap.set("n", "ca", vim.lsp.buf.code_action, {})
      vim.keymap.set("n", "gf", vim.lsp.buf.format, {})

    end
  }
}
