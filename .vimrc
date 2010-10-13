set nocompatible
set autowrite
set tabstop=3
set smarttab
set shiftwidth=3
set autoindent
set noexpandtab
set backspace=start,indent
set number
set hlsearch
set incsearch
"set textwidth=80
autocmd Filetype make	set noexpandtab
autocmd Filetype python	set noexpandtab
autocmd Filetype * set formatoptions=tcql nocindent comments&
ab #i import
syntax on
filetype plugin indent on
"colorschem ir_black

cabbr js !js /home/serge/bin/js/runjslint.js "`cat %`" \| /home/serge/bin/python/format_lint_output.py

" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

map <leader>t :FuzzyFinderTextMate<CR>
au! BufRead,BufNewFile *.haml setfiletype haml
autocmd FileType python set omnifunc=pythoncomplete#Complete
map <C-d> :execute 'NERDTreeToggle ' .getcwd()<CR>
vmap Q gq
nmap Q gqap

"map <C-h> <C-w>h
"map <C-j> <C-w>j
"map <C-k> <C-w>k
"map <C-l> <C-w>l

