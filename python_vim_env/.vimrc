syntax on
let python_highlight_all=1

inoremap jk <esc>
set encoding=utf-8

"PEP8 indent
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

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

call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'ycm-core/YouCompleteMe'

" syntax check
Plug 'vim-syntastic/syntastic'

" pep8 code quality check
Plug 'nvie/vim-flake8'

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

let g:ycm_global_ycm_extra_conf = "/home/yes0/.vim/plugged/YouCompleteMe/.ycm_extra_conf.py"
let g:ycm_autoclose_preview_window_after_completion = 1

"Go To Definition. C-O to back
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

let g:NERDTreeShowHidden = 1
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR> 
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>

"" closing vim when its only showing nerdtree
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree


" Let YouCompleteMe know your python environment
" python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF
