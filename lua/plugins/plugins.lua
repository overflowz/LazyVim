return {
  {
    "lewis6991/gitsigns.nvim",
    enabled = true,
    opts = {
      signcolumn = true,
      current_line_blame = true,
      current_line_blame_opts = {
        delay = 500,
      },
    },
  },
  {
    "ibhagwan/fzf-lua",
    lazy = false,
    opts = {
      keys = {
        { "<leader>/", false },
      },
    },
  },
  {
    "mason-org/mason.nvim",
    keys = {
      { "<leader>cm", false }
    },
    opts = {
      ensure_installed = {
        "prettierd",
        "eslint_d",
        "vtsls",
        "taplo",
        "stylua",
        "tofu-ls",
      }
    },
  },
}
