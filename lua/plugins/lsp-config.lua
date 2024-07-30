return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				auto_install = true,
			})
		end,
	},
	{
		"VonHeikemen/lsp-zero.nvim",
		branch = "v3.x",
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lsp_zero = require("lsp-zero")

			lsp_zero.on_attach(function(client, bufnr)
				lsp_zero.default_keymaps({ buffer = bufnr })
        vim.keymap.set('n', 'gr', '<cmd>Telescope lsp_references<cr>', {buffer = bufnr})
			end)


			require("lspconfig").intelephense.setup({})

      local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

      local lsp_config = require("lspconfig")
      lsp_config.lua_ls.setup({capabilities = lsp_capabilities})
      lsp_config.gopls.setup({capabilities = lsp_capabilities})
		end,
	},
}
