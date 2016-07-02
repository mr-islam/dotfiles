"" VIM-PLUG
call plug#begin('~/.vim/plugged')

Plug 'Valloric/YouCompleteMe'   "autocomplete engine
Plug 'scrooloose/syntastic'     "syntax checker

Plug 'hynek/vim-python-pep8-indent'

Plug 'Raimondi/delimitMate'     "insert bracket/quote
Plug 'tpope/vim-surround'       "easy delete bracket/quote

Plug 'tpope/vim-fugitive'       "git

Plug 'vim-airline/vim-airline'  "status bar

"Plug 'plasticboy/vim-markdown'  "markdown utility

Plug 'godlygeek/tabular'
Plug 'dhruvasagar/vim-table-mode'
Plug 'junegunn/goyo.vim'
"Plug 'airblade/vim-gitgutter'

Plug 'fmoralesc/vim-pad'
Plug 'vim-pandoc/vim-pandoc' "pandoc
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vim-pandoc/vim-pandoc-after'
Plug 'mzlogin/vim-markdown-toc'

Plug 'reedes/vim-pencil'
Plug 'reedes/vim-colors-pencil'
Plug 'reedes/vim-thematic'

Plug 'mzlogin/vim-markdown-toc'

Plug 'vim-airline/vim-airline-themes'
Plug 'altercation/vim-colors-solarized'
"Plug 'whatyouhide/vim-gotham'
"Plug 'sjl/badwolf'

"Plug 'myusuf3/numbers.vim'      "smart line numbering
"
"Plug 'rking/ag.vim'
"Plug 'ctrlpvim/ctrlp.vim'

"Plug 'sjl/gundo.vim'
"Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

"Plug 'tmhedberg/SimpylFold'
"
call plug#end()

"" COLORS
syntax on
colorscheme solarized
call togglebg#map("<F5>")

"" BINDING

" saving without permissions
ca w!! w !sudo tee "%"

 " split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" jk is escape
inoremap jk <esc>

" toggle gundo
nnoremap <leader>u :GundoToggle<CR>

" save session
nnoremap <leader>s :mksession<CR>

"leader key
let mapleader=","

"" FORMATTING
set number
"set relativenumber
set tabstop=4	      " number of visual spaces per TAB
set softtabstop=4	  " number of spaces in tab when editing
set expandtab         " tabs are spaces
"set shiftwidth=2
filetype on

"" UI & CONFIG
set number            " line numbers
"set relativenumber    " line numbers realtive to current line
set cursorline        " highlight current line
set wildmenu          " visual autocomplete for command menu
set lazyredraw        " redraw only when we need to.
set showmatch         " highlight matching brackets, etc.

" search
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
" turn off search highlight with <comma><space>
nnoremap <leader><space> :nohlsearch<CR>

" folding
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
" space open/closes folds
nnoremap <space> za
set foldmethod=indent   " fold based on indent level

" saves all vim backup files in /tmp, and retains all backup functionality
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

let python_highlight_all = 1
set encoding=utf-8

" CtrlP settings
 let g:ctrlp_match_window = 'bottom,order:ttb'
 let g:ctrlp_switch_buffer = 0
 let g:ctrlp_working_path_mode = 0
 let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

 map <C-n> :NERDTreeToggle<CR>

 " Syntastic Settings
 set statusline+=%#warningmsg#
 set statusline+=%{SyntasticStatuslineFlag()}
 set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
"" let g:syntastic_auto_loc_list = 1
"" let g:syntastic_check_on_open = 1
"" let g:syntastic_check_on_wq = 0

"Airline wiki
let g:airline_detect_spell = 1
let g:airline_powerline_fonts = 1
set ttimeoutlen=10
set laststatus=2
let g:airline_powerline_fonts = 1
let g:bufferline_echo = 0
set noshowmode
let g:airline_theme='luna'

function! TrimWhiteSpace()
    %s/\s\+$//e
endfunction
autocmd BufWritePre     * :call TrimWhiteSpace()

"" PANDOC SETUP
let g:pandoc#syntax#conceal#urls = 1

