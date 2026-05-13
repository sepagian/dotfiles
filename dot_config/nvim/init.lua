vim.opt.clipboard = "unnamedplus"
vim.opt.completeopt = { "menu", "menuone", "noselect" }
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.mapleader = " "

-- Tab
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- UI
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.termguicolors = true

-- Plugin
vim.pack.add({
	{ src = "https://github.com/nvim-tree/nvim-web-devicons" },
	{ src = "https://github.com/nvim-tree/nvim-tree.lua" },
	{ src = "https://github.com/catppuccin/nvim", name = "catppuccin" },
	{ src = "https://github.com/folke/tokyonight.nvim" },
})

local function my_on_attach(bufnr)  
  local api = require("nvim-tree.api")  
  
  local function opts(desc)  
    return {   
      desc = "nvim-tree: " .. desc,   
      buffer = bufnr,   
      noremap = true,   
      silent = true,   
      nowait = true   
    }  
  end  
  
  -- Apply default mappings first  
  api.config.mappings.default_on_attach(bufnr)  
  
  -- Remove the default J, K, H, L mappings  
  vim.keymap.del("n", "j", { buffer = bufnr })  
  vim.keymap.del("n", "k", { buffer = bufnr })  
  vim.keymap.del("n", "h", { buffer = bufnr })  
  vim.keymap.del("n", "l", { buffer = bufnr })  
  
  -- Your custom mappings  
  vim.keymap.set("n", "j", api.node.navigate.sibling.prev, opts("Prev Sibling"))  
  vim.keymap.set("n", "k", api.node.navigate.sibling.next, opts("Next Sibling"))  
  vim.keymap.set("n", "h", api.node.navigate.parent_close, opts("Close Directory"))  
  vim.keymap.set("n", "l", api.node.open.edit, opts("Open"))  
end  

require("nvim-tree").setup()
vim.cmd.colorscheme("catppuccin-mocha")
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<C-s>", ":write<CR>")
