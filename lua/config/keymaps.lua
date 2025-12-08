-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Remap redo to <leader>r because Ctrl+R is used by the OS.
vim.keymap.set("n", "<leader>r", "<C-r>", { desc = "Redo" })
