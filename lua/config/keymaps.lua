-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap.set
local keydel = vim.keymap.del

keymap({ "n", "v", "i" }, "<S-Up>", "<Up>")
keymap({ "n", "v", "i" }, "<S-Down>", "<Down>")

keymap("i", "<c-h>", "<nop>")
keymap("i", "<c-l>", "<nop>")
keymap("", "<space>", "<nop>")
keymap("n", "<C-u>", "<C-u>zz")
keymap("n", "<C-d>", "<C-d>zz")

keymap("v", "K", ":m '<-2<CR>gv=gv")
keymap("v", "J", ":m '>+1<CR>gv=gv")
