" This enables the pathogen plugin (which will auto load all vim scripts
" inside of bundle/)
execute pathogen#infect()
syntax on

" filetype plugin indent on
filetype plugin on

" auto open NERDTree when vim opens file
autocmd VimEnter * NERDTree | wincmd p

" The following is to better enable the functionality of omnicomplete (mainly
" to disable the annoying default 'auto-fill with the first menu item'
" functionality)
set omnifunc=syntaxcomplete#Complete
set completeopt=longest,menuone
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" inoremap <expr> <C-n> pumvisible() ? '<C-n>' : '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
" inoremap <expr> <M-,> pumvisible() ? '<C-n>' : '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

" open omni completion menu closing previous if open and opening new menu
" without changing the text
" inoremap <expr> <C-Space> (pumvisible() ? (col('.') > 1 ? '<Esc>i<Right>' : '<Esc>i') : '') . '<C-x><C-o><C-r>=pumvisible() ? "\<lt>C-n>\<lt>C-p>\<lt>Down>" : ""<CR>'
" open user completion menu closing previous if open and opening new menu
" without changing the text
" inoremap <expr> <S-Space> (pumvisible() ? (col('.') > 1 ? '<Esc>i<Right>' : '<Esc>i') : '') . '<C-x><C-u><C-r>=pumvisible() ? "\<lt>C-n>\<lt>C-p>\<lt>Down>" : ""<CR>'

" Color scheme
color twilight

" Show numbers
set number
" Enables the * and # to highlight word under cursor, and show all matches
set hlsearch

" Unknown what these do, copied over from Wylie's vimrc file
set expandtab
set softtabstop=2
set shiftwidth=2

set tabstop=2
set shiftwidth=2

set autoindent

" Maps keys to commands
map <F2> :NERDTreeToggle<CR>
" Doesn't work, I have been manually 'formating' using 
" set filetype=type, filetype indent on, gg=G
map <F3> :AutoFormat<CR>
" Shows hidden (.filename) files in NERDTree
let NERDTreeShowHidden=1

" This will allow me to toggle on/off ":set paste" so I can paste without auto
" indenting/commenting
set pastetoggle=<F10>
