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

" FANTASTIC
set scrolloff=8

let mapleader = " "

call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'nvim-telescope/telescope.nvim'
Plug 'ycm-core/YouCompleteMe'

call plug#end()

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


let g:ycm_autoclose_preview_window_after_completion = 1


let g:NERDTreeShowHidden = 1
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR> 
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

nnoremap <silent> <Leader>+ :vertical resize +15<CR>
nnoremap <silent> <Leader>- :vertical resize -15<CR>

"" closing vim when its only showing nerdtree
"autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
