local lsp_zero = require('lsp-zero')
local util = require('lspconfig/util')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  -- Replace the language servers listed here 
  -- with the ones you want to install
  ensure_installed = {'gopls', 'rubocop'},
  handlers = {
    lsp_zero.default_setup,
    gopls = function()
	    require('lspconfig').gopls.setup({
		cmd = {"gopls"},
		filetypes = {"go", "gomod", "gowork", "gotmpl" },
		root_dir = util.root_pattern("go.work", "go.mod", ".git"),
		settings = {
			gopls = {
				completeUnimported = true,
				usePlaceholders = true,
				analyses = {
					unusedparams = true,
				},
				gofumpt = true
			}
		}
	    })
    end,
  },
})
