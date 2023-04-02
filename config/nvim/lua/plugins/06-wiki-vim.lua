-- vim.g.vimwiki_list = {
-- 	{
-- 		path = '~/vimwiki',
-- 		syntax = 'markdown',
-- 		ext = '.md'
-- 	}
-- }
-- vim.g.vimwiki_markdown_link_ext = 1
-- vim.g.vimwiki_global_ext = 0
-- vim.g.vimwiki_filetypes = {'markdown'}

vim.g.wiki_root = '~/vimwiki'
vim.g.wiki_filetypes = {'md'}
vim.g.wiki_link_extension = '.md'
vim.g.wiki_cache_persistent = 0
vim.g.wiki_link_target_type = 'md'
vim.g.wiki_journal = {
	name = 'diary',
	frequency = 'daily',
	date_format = {
		daily = '%Y-%m-%d'
	}
}
