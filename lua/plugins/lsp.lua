return {
  {
    "williamboman/mason.nvim",
    cmd = "Mason",
    keys = { { "<leader>mm", "<cmd>Mason<cr>", desc = "Mason" } },
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls" },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.pyright.setup({})
      lspconfig.rust_analyzer.setup({
        setting = { ["rust-analyzer"] = {} },
      })
      local keymap = vim.keymap.set
      keymap("n", "<leader>k", vim.lsp.buf.hover, {})
      keymap("n", "gd", vim.lsp.buf.definition, {})
      keymap("n", "<leader>ca", vim.lsp.buf.code_action, {})
      keymap("n", "<space>wl", function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
      end, {})
      keymap("n", "<space>D", vim.lsp.buf.type_definition, {})
      keymap("n", "<space>rn", vim.lsp.buf.rename, {})
    end,
  },
}
