set shell=zsh

execute pathogen#infect()

"Filetypes
filetype plugin indent on

"Auto refresh file buffer
set autoread

"Colors
syntax on
colorscheme Sunburst

"Soft tabs
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

"Line numbers
set number
set showmatch

"Search
set hlsearch
set incsearch
set ignorecase
set smartcase

"Show hidden files on NERDTree
let NERDTreeShowHidden=1

"Mappings for vim-rspec
map <leader>t :call RunCurrentSpecFile()<CR>
map <leader>s :call RunNearestSpec()<CR>
map <leader>l :call RunLastSpec()<CR>
map <leader>a :call RunAllSpecs()<CR>
let g:rspec_command = "!rspec --require emoji-rspec --format life {spec}"

"Status line
hi StatusLine cterm=NONE ctermbg=darkgreen ctermfg=black gui=bold guibg=green guifg=black
hi StatusLineNC cterm=NONE ctermbg=black ctermfg=lightgray gui=bold guibg=black guifg=lightgray
set showcmd

"Find what?
command! -nargs=1 Find Ack <args> **/*.?(css|erb|feature|haml|htm|html|js|json|prawn|rabl|rake|rb|rxls|yml)
map <leader>f :exec "Find ".input("Find what? ")<cr>

