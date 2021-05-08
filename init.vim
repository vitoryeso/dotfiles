syntax on

inoremap jk <esc>
inoremap <esc> <nop>
set encoding=UTF-8

" gud tab/indent options
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent

" relative number etc
set number relativenumber

" tira o highlight dps q da um search
set nohlsearch

set nowrap

" n cria swap file
set noswapfile

" da um alerta visual no canto esquerdo
set signcolumn=yes

" procura conforme vc ja vai digitando
set incsearch

" FANTASTIC
set scrolloff=8

let mapleader = " "


nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>

noremap <Up> <nop>
noremap <Down> <nop>
noremap <Right> <nop>
noremap <Left> <nop>

call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'nvim-telescope/telescope.nvim'

call plug#end()
