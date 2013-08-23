" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd     " Show (partial) command in status line.
set showmatch   " Show matching brackets.
set ignorecase  " Do case insensitive matching
set smartcase   " Do smart case matching
set incsearch   " Incremental search
set autowrite   " Automatically save before commands like :next and :make
set hidden      " Hide buffers when they are abandoned
set mouse=a     " Enable mouse usage (all modes) in terminals
set ruler       " Enable line number display

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

" Kris' settings
set sw=2
set ts=2
set expandtab
set hlsearch
set matchpairs+=<:>
set tabpagemax=99
" Enable graphical completions of commands and parameters in command mode (:).
set wildmode=full
set wildmenu
au FilterWritePre * if &diff | set foldmethod=manual | endif
au BufWritePre * %s/\s\+$//eg  " Trim whitespace from end of lines on save

" Avoid RSI
imap fj <esc>

map gf :tabnew <cfile><cr>
map <tab> :tabnext<cr>
map <s-tab> :tabprevious<cr>
"map <c-tab> :tabnext<cr>
"map <c-s-tab> :tabprevious<cr>
"imap <c-tab> <esc>:tabnext<cr>
"imap <c-s-tab> <esc>:tabprevious<cr>

"if has("gui_running")
    "map <C-S-tab> :tabprevious<cr>
    "map <C-tab> :tabnext<cr>
    "map <C-S-tab> :tabprevious<cr>
    "map <C-tab> :tabnext<cr>
    "imap <C-S-tab> <ESC>:tabprevious<cr>i
    "imap <C-tab> <ESC>:tabnext<cr>i
    "nmap <C-t> :tabnew<cr>
    "imap <C-t> <ESC>:tabnew<cr>
"else
    "map ^[[Z :tabprevious<cr>
    "map <C-tab> :tabnext<cr>
    "map ^[[Z :tabprevious<cr>
    "map <C-tab> :tabnext<cr>
    "imap ^[[Z <ESC>:tabprevious<cr>i
    "imap <C-tab> <ESC>:tabnext<cr>i
    "nmap <C-t> :tabnew<cr>
    "imap <C-t> <ESC>:tabnew<cr>
"endif

if &term == "screen"
  set term=xterm
endif
