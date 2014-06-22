" minimalist's vimrc
" writern with minimalism in mind
" no plugins will ever needed, small yet convienent, portable vimbox
" Perfect for restricted UNIX like environment
" Perfect for new vim learners
" author: Kun Su
" version: 0.1.1

" basic stuff...
set number
syntax on

set hlsearch
" map 33 to disable highlight
nnoremap 33 :noh<CR> 

" formating indentation
"-------------------------------------
" map tab to num of space accordingly
set expandtab
" num of space inserted when tab
set softtabstop=4

" num of space inserted with autoindent
set shiftwidth=4
" copy indent level from previous line
set autoindent


" mode switch
"-------------------------------------
" map ; to : in both normal mode and visual mode
nnoremap ; :
vnoremap ; :
" map jj to esc in insert mode 
inoremap jj <Esc>

" IDE like auto complete
"-------------------------------------
" trigger by tab
inoremap <Tab> <C-N>
set completeopt=longest,menuone
inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

au BufWritePost .vimrc so ~/.vimrc    

