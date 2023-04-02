-- Configure nvim Using Lua
-- https://vonheikemen.github.io/devlog/tools/configuring-neovim-using-lua/
-- Style Guide
-- https://roblox.github.io/lua-style-guide/

local set = vim.opt
set.swapfile = false
set.syntax = 'on'
set.colorcolumn = '80'
set.listchars = {
	tab = '> ',
	nbsp = '+'
}
set.list = true
set.number = true

require('plugins.00-packer')
require('plugins.01-nvm-tree')
require('plugins.02-onedark')
require('plugins.03-nvim-lspconfig')
require('plugins.04-nvim-surround')
require('plugins.05-comment')
require('plugins.06-wiki-vim')
require('plugins.07-nvim-treesitter')
require('plugins.08-snippy')
require('plugins.09-fzf')
require('plugins.10-peek')
require('plugins.11-vviki')
