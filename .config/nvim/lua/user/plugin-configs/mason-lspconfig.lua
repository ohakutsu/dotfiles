require("mason-lspconfig").setup({ automatic_installation = true })

local capabilities = require("cmp_nvim_lsp").default_capabilities()

local on_attach = function(client, bufnr)
  local opts = {
    noremap = true,
    silent = true,
    buffer = bufnr,
  }

  vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
  vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
  vim.keymap.set("n", "ge", vim.diagnostic.open_float, opts)
  vim.keymap.set("n", "gf", vim.lsp.buf.format, opts)
  vim.keymap.set("n", "gn", vim.lsp.buf.rename, opts)
  vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
end

local lspconfig = require("lspconfig")

lspconfig.lua_ls.setup({
  capabilities = capabilities,
  on_attach = on_attach,
})
lspconfig.tsserver.setup({
  capabilities = capabilities,
  on_attach = on_attach,
})
lspconfig.rust_analyzer.setup({
  capabilities = capabilities,
  on_attach = on_attach,
})
lspconfig.solargraph.setup({
  capabilities = capabilities,
  on_attach = on_attach,
})
lspconfig.clangd.setup({
  capabilities = capabilities,
  on_attach = on_attach,
})
lspconfig.html.setup({
  capabilities = capabilities,
  on_attach = on_attach,
})
lspconfig.lemminx.setup({
  capabilities = capabilities,
  on_attach = on_attach,
})
lspconfig.pyright.setup({
  capabilities = capabilities,
  on_attach = on_attach,
})
lspconfig.terraformls.setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

lspconfig.efm.setup(vim.tbl_extend("force", require("user.plugin-configs.efmls-configs").config, {
  capabilities = capabilities,
  on_attach = on_attach,
}))
