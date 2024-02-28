vim.g.mapleader = " " -- <Space>

if not vim.g.vscode then
  require("user.lazy-nvim")
end

--[[ vim config ]]
vim.opt.autoindent = true
vim.opt.backspace = "2"
vim.opt.confirm = true
vim.opt.cursorline = true
vim.opt.expandtab = true
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.list = true
vim.opt.number = true
vim.opt.ruler = true
vim.opt.shell = "/usr/bin/env zsh"
vim.opt.shiftwidth = 2
vim.opt.showcmd = true
vim.opt.signcolumn = "yes"
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.spell = true
vim.opt.spelllang = { "en", "cjk" }
vim.opt.tabstop = 2

vim.cmd("syntax enable")
vim.cmd("filetype plugin indent on")

if not vim.g.vscode then
  vim.cmd("colorscheme sonokai")
end

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
vim.keymap.set("n", "<Esc><Esc>", "<Cmd>nohlsearch<CR>")
