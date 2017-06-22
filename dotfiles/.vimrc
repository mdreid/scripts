syntax on
"set cc=80 " sets margin (color column) at 80 characters. Lines much longer than this are annoying to read as can be seen here

let mapleader="," "leader is comma

"when doing makefile use actual tabs (Ctrl-v <TAB> is an alternative)
autocmd FileType make setlocal noexpandtab

"remap ESC to jk
inoremap jk <esc> 

"Let's make this hard!
inoremap <esc> <nop>

"Get tabs as spaces
set tabstop=4 " number of visual spaces per tab (i.e. a tab will look like four spaces
set softtabstop=4 "number of spaces in tab when editing (key word: editing)
set expandtab "tabs are spaces

"set cursorline "highlight current line

set wildmenu "visual autocomplete for command menu (    )   
set number
set incsearch "search as characters are entered
set hlsearch "highlight matches
noremap <leader><space> :nohlsearch<CR>

"Note: http://dougblack.io/words/a-good-vimrc.html

"echo "Welcome, Malcolm"

noremap - ddp
noremap _ dd2kp
"Highlight word
inoremap <c-u> <esc>viwUi
nnoremap <c-u> viwU

let mapleader = ","
let maplocalleader = "\\"

"Add things and source things quickly
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

"Some quick abbreviations
iabbrev @@  malcolmdreidjr@gmail.com
iabbrev ccopy  Copyright 2017 Malcolm Reid Jr., all rights reserved.

"Adds double quotes around the current word
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel

"Adds single quotes around the current word
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel

"Adds double quotes around the visually selected text (note: do :help '< for more details)
vnoremap <leader>" <esc>`<i"<esc>`>a"<esc>

"Ditto for single quotes
vnoremap <leader>' <esc>`<i'<esc>`>a'<esc>

"Some clutch autocommands
augroup filetype_java
    autocmd!    
    autocmd FileType java nnoremap <buffer> <localleader>c I//<esc>
augroup END

augroup filetype_javascript
    autocmd!
    autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>
augroup END

augroup filetype_c
    autocmd!
    autocmd FileType c nnoremap <buffer> <localleader>c I//<esc>
augroup END

augroup filetype_python
    autocmd!
    autocmd FileType python nnoremap <buffer> <localleader>c I#<esc>
augroup END

augroup filetype_bash
    autocmd!
    autocmd FileType bash nnoremap <buffer> <localleader>c I#<esc>
augroup END

set foldlevelstart=1
