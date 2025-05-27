return {
  -- {
  --   "saghen/blink.cmp",
  --   dependencies = {
  --     "moyiz/blink-emoji.nvim",
  --   },
  --   opts = {
  --     sources = {
  --       default = {
  --         "emoji",
  --       },
  --       providers = {
  --         emoji = {
  --           module = "blink-emoji",
  --           name = "Emoji",
  --           score_offset = 15,
  --           opts = {
  --             insert = true
  --           },
  --         },
  --       },
  --     },
  --   },
  -- },
  -- {
  --   'Exafunction/windsurf.vim',
  --   enabled = true,
  --   event = 'BufEnter',
  --   config = function()
  --     -- vim.keymap.del("i", "<Right>");
  --     vim.keymap.set('i', '<C-g>', function() return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
  --     vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true, silent = true })
  --     vim.keymap.set('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end,
  --       { expr = true, silent = true })
  --     vim.keymap.set('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end,
  --       { expr = true, silent = true })
  --   end
  -- },
  {
    "supermaven-inc/supermaven-nvim",
    config = function()
      require("supermaven-nvim").setup({
        keymaps = {
          accept_suggestion = "<C-g>",
          clear_suggestion = "<c-x>",
        },
        disable_keymaps = false,
      })
    end,
  },
}
