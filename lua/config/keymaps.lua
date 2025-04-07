-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local unmap = vim.keymap.del

unmap({ "n", "v" }, "<leader>cf")
unmap("n", "<leader>cd")
unmap("n", "<leader>l")

-- general

map("n", "<leader>tt", "<cmd>TransparentToggle<cr>", { desc = "Toggle Transparency" })
map({ "n", "v" }, "<leader>/", "<cmd>normal gcc<cr>", { desc = "Toggle comment" })

-- buffer

map("n", "<leader>c", function() Snacks.bufdelete() end, { desc = "Delete Buffer" })

-- lsp

map("n", "<leader>li", "<cmd>LspInfo<cr>", { desc = "Lsp Info" })
map("n", "<leader>ld", vim.diagnostic.open_float, { desc = "Line Diagnostics" })
map("n", "<leader>ls", "<cmd>Trouble symbols toggle<cr>", { desc = "Symbols (Trouble)" })
map("n", "<leader>lS", "<cmd>Trouble lsp toggle<cr>", { desc = "LSP references/definitions/... (Trouble)" })
map("n", "<leader>lf", function() LazyVim.format({ force = true }) end, { desc = "Format File" })
map({ "n", "v" }, "<leader>lF",
  function() require("conform").format({ formatters = { "injected" }, timeout_ms = 3000 }) end,
  { desc = "Format Injected Langs" })
