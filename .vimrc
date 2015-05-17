" basic stuff...
set number
syntax on
nnoremap <Enter> O<Esc>

" comment color for human
hi Comment ctermfg=LightBlue

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

"fast saving
inoremap xx <Esc>:x<Enter>

" insert mode editing (emacs mode)
inoremap <C-A> <Esc>^i
inoremap <C-E> <Esc>$i
inoremap <C-K> <Esc>d$i
inoremap <C-U> <Esc>d0i
inoremap <C-L> <Esc>o

" IDE like auto complete
"-------------------------------------
" trigger by `
inoremap ` <C-N>
set completeopt=longest,menuone
inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

au BufWritePost .vimrc so ~/.vimrc    

