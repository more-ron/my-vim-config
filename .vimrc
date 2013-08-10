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

"Mappings for vim-rspec
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>


