local dapui = require("dapui")
dapui.setup()

local opts = {
  noremap = true,
  silent = true,
}

vim.keymap.set("n", "<Leader>dx", dapui.toggle, opts)
