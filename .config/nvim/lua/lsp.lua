require("mason").setup()
require("mason-lspconfig").setup({ automatic_installation = true })

local capabilities = require("cmp_nvim_lsp").default_capabilities()

local lspconfig = require("lspconfig")
lspconfig.lua_ls.setup({
	capabilities = capabilities,
})
lspconfig.tsserver.setup({
	capabilities = capabilities,
})
lspconfig.rust_analyzer.setup({
	capabilities = capabilities,
})
lspconfig.solargraph.setup({
	capabilities = capabilities,
})

local cmp = require("cmp")
cmp.setup({
	snippet = {
		expand = function(args)
			vim.fn["vsnip#anonymous"](args.body)
		end,
	},
	mapping = cmp.mapping.preset.insert({
		["<C-b>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-l>"] = cmp.mapping.complete(),
		["<C-e>"] = cmp.mapping.abort(),
		["<CR>"] = cmp.mapping.confirm({ select = true }),
		["<Tab>"] = cmp.mapping.select_next_item(),
	}),
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
	}),
})

local keymap_opts = {
	noremap = true,
	silent = true,
}
vim.keymap.set("n", "K", vim.lsp.buf.hover, keymap_opts)
vim.keymap.set("n", "gd", vim.lsp.buf.definition, keymap_opts)
vim.keymap.set("n", "<Leader>f", vim.lsp.buf.format, keymap_opts)
vim.keymap.set("n", "<Leader>rn", vim.lsp.buf.rename, keymap_opts)
vim.keymap.set("n", "<Leader>e", vim.diagnostic.open_float, keymap_opts)
