""""""""""""""""""""
" vim-plug
""""""""""""""""""""
call plug#begin()
Plug 'joshdick/onedark.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'lotabout/skim', { 'dir': '~/.skim', 'do': './install' }
Plug 'lotabout/skim.vim'
Plug 'airblade/vim-gitgutter'
call plug#end()

""""""""""""""""""""
" Vim config
""""""""""""""""""""
" syntax enable " Enabled by vim-plug
" filetype plugin indent on " Enabled by vim-plug
set autoindent
set backspace=2
set expandtab
set hlsearch
set ignorecase
set list
set number
set ruler
set shiftwidth=2
set signcolumn=yes
set smartcase
set spell
set spelllang=en,cjk
set tabstop=2

let mapleader="\<Space>"

""""""""""""""""""""
" Plugin config
""""""""""""""""""""
colorscheme onedark

" asyncomplete.vim
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <CR> pumvisible() ? asyncomplete#close_popup() : "\<CR>"
nnoremap <silent> <F2> <Plug>(lsp-rename)
nnoremap <silent> K <Plug>(lsp-hover)
nnoremap <silent> gd <Plug>(lsp-definition)

" skim.vim
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <Leader>c :Commands<CR>
nnoremap <silent> <Leader>g :GFiles<CR>
nnoremap <silent> <Leader>m :Maps<CR>
nnoremap <silent> <Leader>p :Files<CR>
