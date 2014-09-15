" pathogen setting
filetype off
execute pathogen#infect()

" syntax highlighting
syntax on 

" enable loading indent file or filetype
filetype plugin indent on 

" turn off vi compatibility
set nocompatible 

" filetype detection
filetype on 

" set screen line to keep above and below cursor
set scrolloff=999

" use utf-8
set encoding=utf-8

" show row and columns cursor position
set ruler 

" show row number
set number 

" colorscheme
if has("gui_running")
	colorscheme murphy 
else
	colorscheme murphy
endif

" displaying complete command
set showcmd

" search as you type
set incsearch

" show autocomplete menu
set wildmenu

" show editing mode
set showmode

" turn on visual bell
set visualbell

" set size of the vim window
set lines=55 columns=80

" set fold method
set foldmethod=indent

" mapping space to fold
nnoremap <space> za

" map multi-window navigation
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" set map leader key
let mapleader=","

" map open vimrc
nnoremap <leader>ev :split $MYVIMRC<cr>

" source edited vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>

" map create new line below
nnoremap <leader>o o<esc>k

" map create new line above
nnoremap <leader>O O<esc>j

" mapping task list
map <leader>td <Plug>TaskList

" mapping gundo
map <leader>g :GundoToggle<cr>

" mapping pyflakes
let g:pyflakes_use_quickfix = 0

" mapping pep8
let g:pep8_map='<leader>8'

" Tab completion and documentation
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

" mapping nerdtree
map <leader>n :NERDTreeToggle<cr>

" mapping refactoring and go to definition
map <leader>j :RopeGotoDefinition<cr>
map <leader>r :RopeRename<cr>

" mapping ack
nmap <leader>a <esc>:Ack!

" add the virtualenv's site-pakcages to vim path
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
	project_base_dir = os.environ['VIRTUAL_ENV']
	sys.path.insert(0, project_base_dir)
	activate_this = os.path.join(project_base_dier, 'bin/activate_this.py')
	execfile(activate_this, dict(__file__=activate_this))
EOF
