return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      local keys = require("lazyvim.plugins.lsp.keymaps").get()

      -- disable default keymaps

      vim.list_extend(keys, {
        { "<leader>ca", false },
        { "<leader>cA", false },
        { "<leader>cc", false },
        { "<leader>cC", false },
        { "<leader>cR", false },
        { "<leader>cr", false },
        { "<leader>cl", false },
      });

      -- vtsls

      vim.list_extend(keys, {
        { "<leader>cD", false },
        { "<leader>cM", false },
        { "<leader>co", false },
        { "<leader>cu", false },
        { "<leader>cV", false },
      });

      -- conditional keymaps

      vim.list_extend(keys, {
        { "<leader>la", vim.lsp.buf.code_action,   desc = "Code Action",                has = "codeAction" },
        { "<leader>lA", LazyVim.lsp.action.source, desc = "Source Action",              has = "codeAction" },
        { "<leader>lc", vim.lsp.codelens.run,      desc = "Run Codelens",               has = "codeLens" },
        { "<leader>lC", vim.lsp.codelens.refresh,  desc = "Refresh & Display Codelens", mode = { "n" },    has = "codeLens" },
        { "<leader>lR", Snacks.rename.rename_file, desc = "Rename File",                mode = { "n" },    has = { "workspace/didRenameFiles", "workspace/willRenameFiles" } },
        { "<leader>lr", vim.lsp.buf.rename,        desc = "Rename",                     has = "rename" },
      })

      -- server opts

      opts.servers = {
        vtsls = {
          keys = {
            { "<leader>lo", LazyVim.lsp.action["source.organizeImports"],                                           desc = "Organize Imports" },
            { "<leader>lM", LazyVim.lsp.action["source.addMissingImports.ts"],                                      desc = "Add missing imports" },
            { "<leader>lu", LazyVim.lsp.action["source.removeUnused.ts"],                                           desc = "Remove unused imports" },
            { "<leader>lD", LazyVim.lsp.action["source.fixAll.ts"],                                                 desc = "Fix all diagnostics" },
            { "<leader>lV", function() LazyVim.lsp.execute({ command = "typescript.selectTypeScriptVersion" }) end, desc = "Select TS workspace version" },
          },
          settings = {
            typescript = {
              inlayHints = nil,
              -- inlayHints = {
              --   parameterNames = { enabled = "literals" },
              --   parameterTypes = { enabled = true },
              --   variableTypes = { enabled = true },
              --   propertyDeclarationTypes = { enabled = true },
              --   functionLikeReturnTypes = { enabled = true },
              --   enumMemberValues = { enabled = true },
              -- },
            },
          },
        },
      }
    end,
  },
  {
    "stevearc/conform.nvim",
    enabled = true,
    keys = {
      { "<leader>cF", false, },
      { "<leader>cf", false, },
    },
    opts = {
      formatters_by_ft = {
        lua = { "stylelua" },
        javascript = { "prettierd", "eslint_d" },
        typescript = { "prettierd", "eslint_d" },
        sql = { "pg_format" },
        toml = { "taplo" },
      },
    },
  },
  {
    "mfussenegger/nvim-lint",
    enabled = true,
    opts = {
      linters_by_ft = {
        javascript = { "eslint_d" },
        typescript = { "eslint_d" },
      },
    },
  },
  {
    "folke/trouble.nvim",
    keys = {
      { "<leader>cs", false },
      { "<leader>cS", false },
      { "<leader>cs", false },
      { "<leader>cS", false },
    },
  }
}
