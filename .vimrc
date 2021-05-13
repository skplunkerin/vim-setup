" This enables the pathogen plugin (which will auto load all vim scripts
" inside of bundle/)
execute pathogen#infect()
syntax on

" filetype plugin indent on
filetype plugin on

" auto open NERDTree when vim opens file, and default to right window
autocmd VimEnter * NERDTree | wincmd p
" trying to work with vim sessions, but nerdtree breaks it all :/
" https://www.freecodecamp.org/news/learn-linux-vim-basic-features-19134461ab85/
" https://www.vim.org/scripts/script.php?script_id=3150
" https://www.google.com/search?q=vim+make+session+with+nerdtree&rlz=1C5CHFA_enUS852US852&oq=vim+make+session+with+nerdtree&aqs=chrome..69i57j33.7096j0j7&sourceid=chrome&ie=UTF-8
" https://stackoverflow.com/questions/4226905/vim-nerdtree-not-recovered-in-session-restore
" https://shapeshed.com/vim-netrw/
" if !exists('SessionLoad')
"   autocmd VimEnter * NERDTree | wincmd p
" endif

" The following is to better enable the functionality of omnicomplete (mainly
" to disable the annoying default 'auto-fill with the first menu item'
" functionality)
set omnifunc=syntaxcomplete#Complete
set completeopt=longest,menuone
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" inoremap <expr> <C-n> pumvisible() ? '<C-n>' : '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
" inoremap <expr> <M-,> pumvisible() ? '<C-n>' : '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

" Macbook Pro (MBP) Touchbar ESC fixed
" https://csswizardry.com/2017/01/preparing-vim-for-apples-touch-bar/
" Insert mode can be escaped by typing either of the following: kj, qqq
inoremap kj <esc>
inoremap qqq <esc>
" Take training wheels off so ESC does nothing:
" (THESE DON'T WORK AND BREAK ':' FROM WORKING)
" Map `Escape` to ‘nothing’ in Normal, Visual, Select, Operator-pending modes
"noremap: <esc> <nop>
" Map `Escape` to ‘nothing’ in Insert and Command modes
"noremap!: <esc> <nop>

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

" Testing <leader>
" https://tuckerchapman.com/2018/06/16/how-to-use-the-vim-leader-key/
" https://github.com/janko/vim-test
" Testing leader+nt (,nt) to toggle Nerdtree
" Default leaders is: \
" To change, do (replace , with desired leader):
:let mapleader = ","
" e for explorer (to match VSCodeVim mapping)
nnoremap <leader>e :NERDTreeToggle<CR>

" Window movement (specific for Chromebook)
nmap <C-a> :wincmd h<CR>
" nmap <left> :wincmd h<CR>
nmap <C-h> :wincmd h<CR>
" nmap <right> :wincmd l<CR>
nmap <C-l> :wincmd l<CR>
" nmap <up> :wincmd k<CR>
nmap <C-k> :wincmd k<CR>
" nmap <down> :wincmd j<CR>
nmap <C-j> :wincmd j<CR>

set encoding=utf-8

" Doesn't work, I have been manually 'formating' using 
" set filetype=type, filetype indent on, gg=G
map <F3> :AutoFormat<CR>
" Shows hidden (.filename) files in NERDTree
let NERDTreeShowHidden=1
let NERDTreeDirArrows=0

" This will allow me to toggle on/off ":set paste" so I can paste without auto
" indenting/commenting
set pastetoggle=<F10>
function Numbertoggle()
  " echom &number
	if &number == 1
		set nonumber
	else
		set number
	endif
endfunction
map <F9> :call Numbertoggle()<CR>

" Fix backspace (delete) key to work as expected after updating Vim
" http://vim.wikia.com/wiki/Backspace_and_delete_problems
set backspace=indent,eol,start

" Attempt to get webpack working with recognizing file changes (on React
" projects)
set backupcopy=yes
