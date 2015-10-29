call pathogen#infect()

" UI
if has("gui_running") " Turn off toolbar
    set guioptions-=T
    set guioptions+=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

" Appearances
colors slate
syntax on                                     " Syntax highlighting
set nu                                        " Line numbers
set showcmd                                   " Show command in status line
set showmatch                                 " Show matching paren
set hlsearch                                  " Highlight search results
set list                                      " Show hidden characters
set listchars=tab:>.,trail:.,extends:#,nbsp:. " What to use for hiddens
set scrolloff=3                               " Keep 3 lines visible around cursor
set wildmenu                                  " Set cooler tab complete
if has("gui_macvim")
  set transparency=3                          " Minimal transparency
endif

" Whitespace
set softtabstop=2                             " Tab will create two spaces
set tabstop=2                                 " Tabs will show as 2 spaces
set shiftwidth=2                              " Indentation to 2
set expandtab                                 " Convert tabs to spaces
set autoindent                                " Autoindent

" Behavior
set ignorecase                                " Ignore case on search
set diffopt=filler,iwhite                     " Ignore whitespace on diff
set nobackup                                  " Don't create backup files
set nowb
set noswapfile

" Bindings
let mapleader=","

" NERDTree
map <Leader>n :execute 'NERDTreeToggle ' . getcwd()<CR>
let NERDTreeChDirMode=2

" CtrlP
map <Leader>p :execute 'CtrlP ' getcwd()<CR>
map <Leader>P :execute 'CtrlPBuffer'<CR>

" Auto-behavior
" autocmd BufEnter * silent! lcd %:p:h          " Change pwd to buffer's
" Turned off because it would fuck with CommandT
