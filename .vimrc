source ~/.vimrc-vundle


syntax on                                                       " Enable syntax highlighting
set number                                                      " Show line numbers
set cursorline                                                  " Highlight current line

set statusline=%f
set laststatus=2


set backspace=indent,eol,start                                  " Fix backspace behaviour

colorscheme Tomorrow-Night

set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab     " Tab character = 4 spaces; tab key = inserts spaces

nmap <Leader>ev :tabe $MYVIMRC<cr>                              " Easy edit vimrc
nmap <Leader>eb :tabe ~/.bashrc<cr>                           " Easy edit bash profile

set hlsearch
set incsearch
nmap <Leader><space> :nohlsearch<cr>

" ---- Auto commands ----    

augroup autosource
    autocmd!
    autocmd BufWritePost .vimrc source %
augroup end


" ---- Fix background bug on scroll ----
if &term =~ '256color'
    " Disable Background Color Erase (BCE) so that color schemes
    " work properly when Vim is used inside tmux and GNU screen.
    set t_ut=
endif


let g:jsx_ext_required = 0 " Allow JSX in normal JS files
