syntax on
"set cc=80 " sets margin (color column) at 80 characters. Lines much longer than this are annoying to read as can be seen here

let mapleader="," "leader is comma

"remap ESC to jk
inoremap jk <esc> 

"Get tabs as spaces
set tabstop=4 " number of visual spaces per tab (i.e. a tab will look like four spaces
set softtabstop=4 "number of spaces in tab when editing (key word: editing)
set expandtab "tabs are spaces

"set cursorline "highlight current line

set wildmenu "visual autocomplete for command menu (    )   

set incsearch "search as characters are entered
set hlsearch "highlight matches
noremap <leader><space> :nohlsearch<CR>

"Note: http://dougblack.io/words/a-good-vimrc.html
set number
