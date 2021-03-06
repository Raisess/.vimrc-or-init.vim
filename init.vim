" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'neoclide/coc.nvim'
Plug 'morhetz/gruvbox'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'raimondi/delimitmate'
Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

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
set updatetime=300
set shortmess+=c

let g:gruvbox_contrast_dark='hard'
let g:gruvbox_invert_selection='0'
colorscheme gruvbox

highlight LineNr term=bold ctermfg=DarkGrey guifg=DarkGrey
highlight Comment ctermfg=DarkGrey

let g:netrw_banner=0

if !has('gui_running')
  set t_Co=256
endif

let g:airline_theme='base16_gruvbox_dark_hard'
let g:airline_powerline_fonts=1

" NERDTree config
let g:NERDTreeShowHidden=1
let g:NERDTreeMinimalUI=1
let g:NERDTreeDirArrowExpandable='+'
let g:NERDTreeDirArrowCollapsible='-'
let g:NERDTreeIgnore=['^.git$[[dir]]', '^node_modules$[[dir]]']
let g:NERDTreeStatusline='NERDTree'
let g:NERDTreeQuitOnOpen=1
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <C-b> :NERDTreeToggle<CR>

" CoC
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" FZF
nnoremap <silent> <C-f> :GFiles<CR>

