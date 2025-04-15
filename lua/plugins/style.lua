return {
  {
    "folke/snacks.nvim",
    lazy = false,
    keys = {
      { "<leader>/", false },
    },
    ---@type snacks.Config
    opts = {
      dashboard = {
        enabled = false,
      },
      bigfile = {
        enabled = true,
      },
      terminal = {
        win = {
          position = "float",
          style = "terminal",
        },
      },
      scroll = {
        enabled = false,
      },
      explorer = {
        enabled = false,
        replace_netrw = true,
      },
      picker = {
        auto_close = false,
      },
    },
  },
  {
    "folke/trouble.nvim",
    ---@class trouble.Config
    opts = {
      use_diagnostic_signs = true,
      preview = {
        type = "main",
        scratch = true,
      },
      win = {
        position = "right"
      },
    },
  },
}
