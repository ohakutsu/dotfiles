" Initialize
" Run `CocInstall coc-json`

"### memo ###

" split / close window
" :split / :vsplit
" :new / :vnew
" :close

" move window
" Ctrl-W {h, j, k, l}

"### dein.vim ###
if &compatible
  set nocompatible
endif

set runtimepath+=~/.vim/bundles/repos/github.com/Shougo/dein.vim

call dein#begin('~/.vim/bundles')

call dein#add('~/.vim/bundles/repos/github.com/Shougo/dein.vim')

" theme
call dein#add('itchyny/lightline.vim')
call dein#add('jacoborus/tender.vim')

call dein#add('Shougo/ddc.vim')
call dein#add('vim-denops/denops.vim')
call dein#add('Shougo/pum.vim')
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('neoclide/coc.nvim', {'merged': 0 ,'rev': 'release'})

call dein#add('Shougo/ddc-around')
call dein#add('Shougo/ddc-matcher_head')
call dein#add('Shougo/ddc-sorter_rank')

call ddc#custom#patch_global('completionMenu', 'pum.vim')
call ddc#custom#patch_global('sources', ['around'])
call ddc#custom#patch_global('sourceOptions', {
      \ '_': {
      \   'matchers': ['matcher_head'],
      \   'sorters': ['sorter_rank']},
      \ })

inoremap <silent><expr> <TAB>
\ pumvisible() ? '<C-n>' :
\ (col('.') <= 1 <Bar><Bar> getline('.')[col('.') - 2] =~# '\s') ?
\ '<TAB>' : ddc#map#manual_complete()
inoremap <expr><S-TAB>  pumvisible() ? '<C-p>' : '<C-h>'

call ddc#enable()

call dein#end()

if dein#check_install()
  call dein#install()
endif

"### tender.vim ###
if (has("termguicolors"))
 set termguicolors
endif

let g:lightline = { 'colorscheme': 'tender' }

colorscheme tender

"### options ###

filetype plugin indent on
set ignorecase
set number
set ruler
set hlsearch
set smartcase
syntax enable
