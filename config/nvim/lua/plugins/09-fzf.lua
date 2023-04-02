-- https://stackoverflow.com/a/31648232
vim.api.nvim_set_keymap(
	'n',
	'<leader>t',
	"<cmd>lua require('fzf-lua').files()<CR>",
	{ noremap = true, silent = true }
)
