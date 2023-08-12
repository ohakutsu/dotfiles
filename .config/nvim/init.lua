vim.g.mapleader = " " -- <Space>

require("user.plugins")
require("user.lsp")
require("user.telescope")
require("user.treesitter")
require("user.nvim-comment")

--[[ vim config ]]
vim.opt.autoindent = true
vim.opt.backspace = "2"
vim.opt.confirm = true
vim.opt.expandtab = true
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.list = true
vim.opt.number = true
vim.opt.ruler = true
vim.opt.shell = "zsh"
vim.opt.shiftwidth = 2
vim.opt.showcmd = true
vim.opt.signcolumn = "yes"
vim.opt.smartcase = true
vim.opt.spell = true
vim.opt.spelllang = { "en", "cjk" }
vim.opt.tabstop = 2

vim.cmd("syntax enable")
vim.cmd("filetype plugin indent on")
vim.cmd("colorscheme sonokai")

-- terminal mode
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

-- nerdtree
vim.keymap.set("n", "<Leader>n", "<Cmd>NERDTreeFocus<CR>", { silent = true })
vim.keymap.set("n", "<C-b>", "<Cmd>NERDTreeToggle<CR>", { silent = true })
vim.g.NERDTreeShowHidden = 1
