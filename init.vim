" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

Plug 'raimondi/delimitmate'
Plug 'sheerun/vim-polyglot'
Plug 'ajh17/vimcompletesme'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'altercation/vim-colors-solarized'

call plug#end()

set noswapfile
set nobackup
set nowritebackup
set number relativenumber
set cmdheight=1
set smarttab
set cindent
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set noexpandtab
set background=dark
set noerrorbells
set hidden
set updatetime=300
set laststatus=2
set guioptions-=L
set guicursor=
set termguicolors
set noshowmode
set nowrap
set formatoptions=l
set textwidth=0 wrapmargin=0

let g:solarized_termcolors=256
colorscheme solarized

highlight LineNr term=bold ctermfg=DarkGrey guifg=DarkGrey
highlight Comment ctermfg=DarkGrey

let g:netrw_banner=0

if !has('gui_running')
  set t_Co=256
endif

let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline_theme='solarized'
let g:airline_powerline_fonts=1

" NERDTree config
let g:NERDTreeShowHidden=1
let g:NERDTreeMinimalUI=1
let g:NERDTreeDirArrowExpandable='▸'
let g:NERDTreeDirArrowCollapsible='▾'
let g:NERDTreeIgnore=[]
let g:NERDTreeStatusline='NERDTree'
let g:NERDTreeQuitOnOpen=1
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <C-b> :NERDTreeToggle<CR>

