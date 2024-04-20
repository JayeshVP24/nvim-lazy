-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

--remap to move next line to current lines end without losing current cursor position
map("v", "K", ":m '<-2<CR>gv=gv", {
  desc = "[K] Move highlighted lines up (visual)",
})
map("v", "J", ":m '>+1<CR>gv=gv", {
  desc = "[J] Move highlighted lines up (visual)",
})

--remap to move next line to current lines end without losing current cursor position
map("n", "J", "mzJ`z", {
  desc = "[J] Move next line to end of current line, persist cursor",
})

-- Move half page up or down and keep cursor at center
map("n", "<C-d>", "<C-d>zz", {
  desc = "[Ctrl d] Move half page down, keer cursor at center",
})
map("n", "<C-u>", "<C-u>zz", {
  desc = "[Ctrl u] Move half page up, keer cursor at center",
})

--Keep cursor at center while searching
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

--Don't loose copy after pasting over highlighted text
map("x", "<leader>p", [["_dP]], {
  desc = "[ p] Do not loose current copy after pasting over highlighted text",
})

--Copy to systems copy buffer
map({ "n", "v" }, "<leader>y", [["+y]], {
  desc = "[ y] Copy to system clipboard / buffer",
})
map("n", "<leader>Y", [["+Y]], {
  desc = "[ y] Copy to system clipboard / buffer",
})

--Delete to void register
map({ "n", "v" }, "<leader>d", [["_d]], {
  desc = "[ d]",
})

--Replace text under cursor in whole page
map("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], {
  desc = "[ s] Replace text under cursor in whole page",
})

--Make current file executable
map("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true, desc = "[ x] Make current file executable" })

--Open Diagnostics Floater
map("n", "<S-e>", vim.diagnostic.open_float, { desc = "Line Diagnostics" })
