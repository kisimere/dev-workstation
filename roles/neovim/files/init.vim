""""""""""""""""""""""""""""
" theotakuscoffee dotfiles "
""""""""""""""""""""""""""""

call plug#begin()

Plug 'bling/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'scrooloose/syntastic'


call plug#end()
"""""""""""""""""""""
" genreral settings "
"""""""""""""""""""""

"enable filetype plugins
filetype off
filetype indent on
set nocompatible
filetype plugin indent on

let g:airline_theme='base16_gruvbox_dark_hard'
let g:airline_powerline_fonts=1
let g:NERDTreeGitStatusUseNerdFonts=1
autocmd vimenter * ++nested colorscheme gruvbox
colorscheme gruvbox
set background=dark

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" :W sudo saves the file 
" (useful for handling the permission-denied error)
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

"turn off backup
set nobackup  
set nowb
set noswapfile                          

let mapleader =","                      "set mapleader to ,
syntax on                               "enable syntax highlights
set encoding=utf-8                      "set encoding
set ffs=unix,dos,mac                    "unix as standard file type

"""""""""""""""""""""
"       UI          "
"""""""""""""""""""""

set cursorline                          "show current line
set wildmenu                            " turn on wildmenu
set number                              "show line number
set relativenumber                      "enable hybrid line numbers
set expandtab                           "spaces instead of tabs
set smarttab                            "smarter tabs
set shiftwidth=4                        "set tabsize to 4
set hlsearch                            "highlight search
set smartcase                           "smart search
set ignorecase                          "ignore case
set incsearch                           "incremental search
set showmatch                           "show matching brackets
set ruler                               "show current position
set ai                                  "auto indent
set si                                  "smart indent
set wrap                                "wrap lines
