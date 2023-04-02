require('onedark').setup {
	style = 'dark',
	toggle_style_key = '<leader>ts'
}
require('onedark').load()

require('lualine').setup {
	options = {
		theme = 'onedark'
	}
}
