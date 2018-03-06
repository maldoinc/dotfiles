source ~/.config/nvim/vundle.vim

syntax on                                                                  " Enable syntax highlighting
set number                                                                 " Show line numbers
set ignorecase                                                             " Case insensitive search
set cursorline                                                             " Highlight current line
set backspace=indent,eol,start                                             " Fix backspace behaviour
set nobackup                                                               " Disable backup
set noswapfile                                                             " Disable swap file
set incsearch
set hlsearch                                                    
set tabstop=5 softtabstop=0 expandtab shiftwidth=4 smarttab                " Tab character = 4 spaces; tab key = inserts spaces
set pastetoggle=<F3>                                                       " Toggle pasting
set tw=0                                                                   " Disable auto text wrap
set laststatus=2                                                           " Required for vim-airline
set wildmenu                                                               " Visual filename completion

let g:jsx_ext_required = 1                                                 " Allow JSX in normal JS files
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_toc_autofit = 1
let NERDTreeShowHidden=1                                                   " Show hidden files by default
let NERDTreeMinimalUI=1                                                    " Hide press for help
let NERDTreeIgnore=['\.git$']                                              " Hide .git directory


colorscheme Benokai

" ---- Key maps ----
nmap <Leader>ev :tabe $MYVIMRC<cr>                                         " Easy edit vimrc
nmap <Leader>eb :tabe ~/.zshrc<cr>                                         " Easy edit zsh profile
nmap <Leader><space> :nohlsearch<cr>
nmap <C-a> <esc>ggVG<cr>                                                   " Select all lines
nmap <Leader>+ :vertical resize +5<cr>                                     " Expand the current split
nmap <Leader>n <plug>NERDTreeTabsToggle<CR><Leader>+<cr>                   " Show tree, expand it and focus the editor
nmap <Leader>- :vertical resize -5<cr>                                     " Shrink the current split

map <Leader>light :colors hybrid-light<cr>
map <Leader>dark  :colors PaperColor<cr>

inoremap jk <esc>

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
