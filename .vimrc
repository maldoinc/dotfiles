source ~/.vimrc-vundle

syntax on                                                       " Enable syntax highlighting
set number                                                      " Show line numbers
set ignorecase                                                  " Case insensitive search
set showmatch                                                   " Highlight matching parenthesis
set cursorline                                                  " Highlight current line
set backspace=indent,eol,start                                  " Fix backspace behaviour
set nobackup                                                    " Disable backup
set noswapfile                                                  " Disable swap file
set incsearch
set hlsearch                                                    
set tabstop=5 softtabstop=0 expandtab shiftwidth=4 smarttab     " Tab character = 4 spaces; tab key = inserts spaces
set pastetoggle=<F3>                                            " Toggle pasting
set tw=0                                                        " Disable auto text wrap

let g:jsx_ext_required = 1                                      " Allow JSX in normal JS files

colorscheme xoria256 

" ---- Key maps ----
nmap <Leader>ev :tabe $MYVIMRC<cr>                              " Easy edit vimrc
nmap <Leader>eb :tabe ~/.zshrc<cr>                              " Easy edit zsh profile
nmap <Leader><space> :nohlsearch<cr>
nmap <C-a> <esc>ggVG<cr>                                        " Select all lines

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
