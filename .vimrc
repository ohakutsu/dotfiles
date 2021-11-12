" ========================================
" dein.vim
" https://github.com/Shougo/dein.vim
" ========================================

if &compatible
  set nocompatible " Be iMproved
endif

set runtimepath+=~/.vim/bundles/repos/github.com/Shougo/dein.vim

call dein#begin('~/.vim/bundles')

call dein#add('Shougo/dein.vim')
if !has('nvim')
  call dein#add('roxma/nvim-yarp')
  call dein#add('roxma/vim-hug-neovim-rpc')
endif

call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')

call dein#add('joshdick/onedark.vim')

call dein#add('junegunn/fzf', { 'build': './install --all' })
call dein#add('junegunn/fzf.vim', { 'depends': 'fzf' })

call dein#end()

if dein#check_install()
  call dein#install()
endif

" ========================================
" vim config
" ========================================

colorscheme onedark

" ファイル形式別プラグインのロードを有効化
" ファイル形式別インデントのロードを有効化
filetype plugin indent on

" 構文ハイライトの有効化
syntax on

" バックスペースキーの動作を有効
set backspace=indent,eol,start

" 行番号を表示する
set number

" 検索で、大文字小文字を区別しない
set ignorecase

" 検索で大文字が含まれているときset ignorecaseを上書き
set smartcase

" インクリメンタルサーチを行う
set incsearch

" 検索結果をハイライトする
set hlsearch

" ステータスラインを表示するウィンドウを設定する
set laststatus=2

" コロンコマンドを記録する数
set history=10000

" 自動インデント
set autoindent

" コマンドを最終行に表示
set showcmd

" カーソルの行数、列数を表示
set ruler

" タブの代わりに空白
set tabstop=2
set shiftwidth=0
set expandtab

" 改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set smartindent
