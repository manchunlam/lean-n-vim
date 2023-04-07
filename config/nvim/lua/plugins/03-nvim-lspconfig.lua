require("mason").setup()

-- Check if executable exists at $PATH
local function commandExists(executable)
	local cmd = 'command -v ' .. executable
	local handle = io.popen(cmd)
	local result

	if handle == nil then
		return false
	else
		result = handle:read("*a")
		handle:close()
	end

	return (result ~= nil and result ~= '')
end

-- Language Servers
local languageServers = {'lua_ls'}

-- Add Solargraph if possible
if commandExists('gem') then
	table.insert(languageServers, 'solargraph')
end

-- Install Language Servers
require("mason-lspconfig").setup({
	ensure_installed = languageServers
})

-- Setup language servers.
local lspconfig = require('lspconfig')

-- Check if file path exists
local function fileExists(filePath)
	local f = io.open(filePath, 'r')

	if f ~= nil then
		io.close(f)
		return true
	end

	return false
end

-- Check if array contains an element
local function includes(array, el)
	for i, v in ipairs(array) do
		if v == el then
			return true
		end
	end

	return false
end

-- Configure per project Solargraph, or use the global one
if includes(languageServers, 'solargraph') then
	local projectExec = os.getenv('PWD') .. '/.bin/solargraph'
	if fileExists(projectExec) then
		lspconfig.solargraph.setup({
			cmd = { solargraphExec, 'stdio' }
		})
	else
		lspconfig.solargraph.setup()
	end
end

-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
	group = vim.api.nvim_create_augroup('UserLspConfig', {}),
	callback = function(ev)
		-- Enable completion triggered by <c-x><c-o>
		vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

		-- Buffer local mappings.
		-- See `:help vim.lsp.*` for documentation on any of the below functions
		local opts = { buffer = ev.buf }
		vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
		vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
		vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
		vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
		vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
		vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
		vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
		vim.keymap.set('n', '<space>wl', function()
			print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
		end, opts)
		vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
		vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
		vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, opts)
		vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
		vim.keymap.set('n', '<space>f', function()
			vim.lsp.buf.format { async = true }
		end, opts)
	end,
})
