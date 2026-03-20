-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local map = vim.keymap.set

-- map("n", "<S-k>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
-- map("n", "<S-j>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })

map("n", "<leader>o", function()
  if Snacks.picker.get({ source = "explorer" })[1] == nil then
    Snacks.picker.explorer()
  elseif Snacks.picker.get({ source = "explorer" })[1]:is_focused() == true then
    Snacks.picker.explorer()
  elseif Snacks.picker.get({ source = "explorer" })[1]:is_focused() == false then
    Snacks.picker.get({ source = "explorer" })[1]:focus()
  end
end, { desc = "Reveal current file in explorer" })

map("n", "<F7>", function()
  Snacks.terminal.toggle()
end, { desc = "Terminal (cwd)" })
