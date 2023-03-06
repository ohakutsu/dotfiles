--[[ vim-plug ]]

local Plug = vim.fn['plug#']

vim.call('plug#begin')
Plug ('sainnhe/sonokai')
Plug ('prabirshrestha/vim-lsp')
Plug ('mattn/vim-lsp-settings')
Plug ('prabirshrestha/asyncomplete.vim')
Plug ('prabirshrestha/asyncomplete-lsp.vim')
Plug ('lotabout/skim', { dir = '~/.skim', ['do'] = './install' })
Plug ('lotabout/skim.vim')
Plug ('airblade/vim-gitgutter')
vim.call('plug#end')

--[[ vim config ]]

vim.opt.autoindent = true
vim.opt.backspace = '2'
vim.opt.expandtab = true
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.list = true
vim.opt.number = true
vim.opt.ruler = true
vim.opt.shiftwidth = 2
vim.opt.signcolumn = 'yes'
vim.opt.smartcase = true
vim.opt.spell = true
vim.opt.spelllang = { 'en', 'cjk' }
vim.opt.tabstop = 2

--vim.cmd('syntax enable') -- Enabled by vim-plug
--vim.cmd('filetype plugin indent on') -- Enabled by vim-plug
vim.cmd('colorscheme sonokai')

vim.g.mapleader = ' ' -- <Space>

--[[ plugin config ]]

-- asyncomplete.vim

vim.keymap.set('i', '<Tab>', function()
  if vim.fn.pumvisible() == 1 then return '<C-n>' end
  return '<Tab>'
end, { expr = true })
vim.keymap.set('i', '<S-Tab>', function()
  if vim.fn.pumvisible() == 1 then return '<C-p>' end
  return '<S-Tab>'
end, { expr = true })
vim.keymap.set('i', '<CR>', function()
  if vim.fn.pumvisible() == 1 then return vim.fn['asyncomplete#close_popup']() end
  return '<CR>'
end, { expr = true })
vim.keymap.set('n', '<F2>', '<Plug>(lsp-rename)', { silent = true })
vim.keymap.set('n', 'K', '<Plug>(lsp-hover)', { silent = true })
vim.keymap.set('n', 'gd', '<Plug>(lsp-definition)', { silent = true })

-- skim.vim
vim.keymap.set('n', '<Leader>b', '<Cmd>Buffers<CR>', { silent = true })
vim.keymap.set('n', '<Leader>c', '<Cmd>Commands<CR>', { silent = true })
vim.keymap.set('n', '<Leader>g', '<Cmd>GFiles<CR>', { silent = true })
vim.keymap.set('n', '<Leader>m', '<Cmd>Maps<CR>', { silent = true })
vim.keymap.set('n', '<Leader>p', '<Cmd>Files<CR>', { silent = true })
