local dap = require("dap")

local opts = {
  noremap = true,
  silent = true,
}

vim.keymap.set("n", "<Leader>db", dap.toggle_breakpoint, opts)
vim.keymap.set("n", "<Leader>dc", dap.continue, opts)
vim.keymap.set("n", "<Leader>di", dap.step_into, opts)
vim.keymap.set("n", "<Leader>dn", dap.step_over, opts)
vim.keymap.set("n", "<Leader>do", dap.step_out, opts)
vim.keymap.set("n", "<Leader>dr", dap.repl.toggle, opts)
