syntax on

inoremap jk <esc>
inoremap <esc> <nop>
     
set encoding=UTF-8
set t_BE=
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set number relativenumber
set nu rnu
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set hlsearch incsearch
set smartcase
set ignorecase

if has('python3')
endif

call plug#begin('~/.vim/plugged')

Plug 'lyuts/vim-rtags'
Plug 'jremmen/vim-ripgrep'
"Plug 'davidhalter/jedi-vim'
Plug 'Valloric/YouCompleteMe'
Plug 'vim-utils/vim-man'
Plug 'kien/ctrlp.vim'
Plug 'mbbill/undotree'
Plug 'morhetz/gruvbox'

call plug#end()


""set termguicolors
""let g:gruvbox_contrast_light = 'hard'
""let g:gruvbox_contrast_dark = 'hard'
if strftime("%H") < 18 && strftime("%H") > 5
    set background=light
else
    set background=dark
endif

""let g:gruvbox_transparent_bg=1
""let g:gruvbox_invert_tabline=1
""colorscheme gruvbox

let mapleader = " "

let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25

let g:ctrlp_use_caching = 0

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>

nnoremap <silent> <Leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <Leader>gf :YcmCompleter FixIt<CR>

inoremap {<Return> {<Return><Return>}<Up><tab>

noremap <Up> <nop>
noremap <Down> <nop>
noremap <Right> <nop>
noremap <Left> <nop>
