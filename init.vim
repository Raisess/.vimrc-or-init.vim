" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

Plug 'tomasr/molokai'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'raimondi/delimitmate'
Plug 'sheerun/vim-polyglot'
Plug 'ajh17/vimcompletesme'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" set showtabline=2
set noswapfile
set nobackup
set nowritebackup
set number relativenumber
set cmdheight=2
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
colorscheme molokai

highlight LineNr term=bold ctermfg=DarkGrey guifg=DarkGrey
highlight Comment ctermfg=DarkGrey

" popup color
highlight Pmenu ctermfg=black ctermbg=grey guifg=black guibg=gray
highlight PmenuSel term=bold ctermfg=black ctermbg=cyan guifg=black guibg=cyan
highlight PmenuThumb ctermbg=yellow guibg=yellow
highlight PmenuSbar ctermbg=grey guibg=grey

let g:netrw_banner=0

if !has('gui_running')
  set t_Co=256
endif

" Airline config
" let g:airline#extensions#tabline#enabled=1
" let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline_theme='molokai'
let g:airline_powerline_fonts=1

" NERDTree config
let g:NERDTreeShowHidden=1
let g:NERDTreeMinimalUI=1
let g:NERDTreeDirArrowExpandable='▸'
let g:NERDTreeDirArrowCollapsible='▾'
let g:NERDTreeIgnore=['^.git$[[dir]]', '^node_modules$[[dir]]']
let g:NERDTreeStatusline='NERDTree'
let g:NERDTreeQuitOnOpen=1
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <C-b> :NERDTreeToggle<CR>

