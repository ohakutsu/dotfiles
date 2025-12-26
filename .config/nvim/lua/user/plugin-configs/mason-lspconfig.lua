require("mason-lspconfig").setup()

local capabilities = require("cmp_nvim_lsp").default_capabilities()

vim.lsp.config("*", {
  capabilities = capabilities,
})

local lsp_attach_group = vim.api.nvim_create_augroup("LspAttachGroup", { clear = true })
vim.api.nvim_create_autocmd({ "LspAttach" }, {
  group = lsp_attach_group,
  callback = function(args)
    local opts = {
      noremap = true,
      silent = true,
      buffer = args.buf,
    }

    vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "ge", vim.diagnostic.open_float, opts)
    vim.keymap.set("n", "gf", vim.lsp.buf.format, opts)
    vim.keymap.set("n", "gn", vim.lsp.buf.rename, opts)
    vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
  end,
})
