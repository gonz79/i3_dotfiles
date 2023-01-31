set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
" set cc=80                  " set an 80 column border for good coding style
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
" set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
" set spell                 " enable spell check (may need to download language package)
" set noswapfile            " disable creating swap file
" set backupdir=~/.cache/vim " Directory to store backup files.


call plug#begin("~/.vim/plugged")
 " Appearance
 Plug 'ryanoasis/vim-devicons'
 Plug 'vim-airline/vim-airline'
 Plug 'vim-airline/vim-airline-themes'
 Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
 Plug 'ellisonleao/gruvbox.nvim'
 Plug 'dracula/vim', {'as': 'dracula'}
 Plug 'navarasu/onedark.nvim'
 Plug 'rebelot/kanagawa.nvim'

 " Utilities
 Plug 'scrooloose/nerdtree'

call plug#end()

set splitbelow

" TokyoNight script
let g:tokyonight_style = "night"

" Gruvbox theme
set termguicolors
set background=dark

" OneDark config, Dark, Darker, Cool, Deep, Warm & Warmer
let g:onedark_config = { 'style': 'deep',}

" Color Schemes
"colorscheme gruvbox
"colorscheme tokyonight
"colorscheme dracula
"colorscheme onedark
colorscheme kanagawa

" Airline configuration
let g:airline_theme='onedark'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

let NERDTreeShowHidden = 1
nmap <F5> :NERDTreeToggle<CR>
