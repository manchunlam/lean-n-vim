-- https://bryankegley.me/posts/nvim-getting-started/

local vim = vim
local execute = vim.api.nvim_command
local fn = vim.fn

-- ensure that packer is installed
local install_path = fn.stdpath('data') .. '/site/pack/packer/opt/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
	execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
	execute 'packadd packer.nvim'
end

vim.cmd('packadd packer.nvim')

local packer = require('packer')
local util = require('packer.util')

packer.init({
	package_root = util.join_paths(vim.fn.stdpath('data'), 'site', 'pack')
})

--- startup and add configure plugins
packer.startup(
	function(use)
		local use = use
		use 'navarasu/onedark.nvim'
		use 'nvim-lualine/lualine.nvim'
		use 'nvim-tree/nvim-tree.lua'
		use {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
			"neovim/nvim-lspconfig"
		}
		use 'kylechui/nvim-surround'
		use 'numToStr/Comment.nvim'
		use 'lervag/wiki.vim'
		use {
			'nvim-treesitter/nvim-treesitter',
			run = ':TSUpdate'
		}
		use 'dcampos/nvim-snippy'
		use 'ibhagwan/fzf-lua'
		use({ 'toppair/peek.nvim', run = 'deno task build:fast' })
		use 'ratfactor/vviki'
		use 'mzlogin/vim-markdown-toc'
	end
)
