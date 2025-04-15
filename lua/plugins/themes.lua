return {
  {
    "LazyVim/LazyVim",
    enabled = true,
    opts = {
      colorscheme = "tokyodark",
    },
  },
  {
    "tiagovla/tokyodark.nvim",
    enabled = true,
    opts = {
      styles = {
        comments = { italic = true },
        keywords = { italic = false },
        identifiers = { italic = false },
        functions = {},
        variables = {},
      },
      custom_highlights = function(_, palette)
        return {
          -- snacks picker

          SnacksPickerGitStatusUntracked = { fg = palette.green },
          SnacksPickerGitStatusModified = { fg = '#ff8700' },
          SnacksPickerDirectory = { fg = palette.blue },

          -- neotree

          NeoTreeGitUntracked = { fg = palette.green },
          NeoTreeGitModified = { fg = '#ff8700' },
          NeoTreeDirectoryIcon = { fg = palette.blue },
          NeoTreeDirectoryName = { fg = palette.blue },
          NeoTreeCursorLine = { bg = "#282C34" },
        }
      end
    },
  },
  {
    "xiyaowong/transparent.nvim",
    lazy = false,
    enabled = true,
    opts = {
      groups = {
        "Normal",
        "NormalNC",
        "Comment",
        "Constant",
        "Special",
        "Identifier",
        "Statement",
        "PreProc",
        "Type",
        "Underlined",
        "Todo",
        "String",
        "Function",
        "Conditional",
        "Repeat",
        "Operator",
        "Structure",
        "LineNr",
        "NonText",
        "SignColumn",
        "CursorLine",
        "CursorLineNr",
        "StatusLine",
        "StatusLineNC",
        "EndOfBuffer",
        "SnacksPicker",
        "SnacksPickerInputBorder",
        "TroubleNormal",
        "TroubleNormalNC",
      },
    },
  },
}
