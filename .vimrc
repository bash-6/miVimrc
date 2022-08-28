set mouse=a
syntax on
set rnu
set incsearch
set tabstop	=4
set softtabstop	=4
set shiftwidth	=4
set expandtab
set autoindent
set nowrapscan
"set colorcolumn=80
set cursorline
set path+=**
set background=dark
colorscheme gruvbox

"   search resalt
nnoremap <F5> :set hlsearch<cr>
nnoremap <F6> :set nohlsearch<cr>

"   exit and save
nnoremap <space>q :qall!<cr>
nnoremap <space>w :wall!<cr>
nnoremap - :q<cr>

"   leader key
let mapleader = ','
inoremap <leader>v <Esc>/<++><Enter>"_c4l

"   javascript
au FileType javascript inoremap {<c-j> {}<esc>i<cr><esc>O<tab>
au FileType javascript inoremap { {}<++><Esc>F{a
au FileType javascript inoremap {} {}
au FileType javascript inoremap [<c-j> [<cr><tab>
au FileType javascript inoremap [ []<++><Esc>F[a
au FileType javascript inoremap [] []
au FileType javascript inoremap (<c-j> (<cr><tab>
au FileType javascript inoremap ( ()<++><Esc>F(a
au FileType javascript inoremap () ()
au FileType javascript inoremap '' ''<++><esc>F'i
au FileType javascript inoremap "" ""<++><esc>F"i
au FileType javascript inoremap `` ``<++><esc>F`i

"   templates html
"   html:5
au FileType html nnoremap ,ht :-1read $HOME/.vim/template/.html<CR>4<down>f>a
"   <link sytle>
au FileType html nnoremap ,cs :-1read $HOME/.vim/template/.css<CR>
"   <script src>
au FileType html nnoremap ,sc :-1read $HOME/.vim/template/.script<CR>
"   <script module>
au FileType html nnoremap ,md :-1read $HOME/.vim/template/.module<CR>

"   complete </>
au FileType html inoremap < <><++><esc>2F<a
au FileType html inoremap > </<c-x><c-o>
"   complete atributes
au FileType html inoremap <leader>s src="" alt="<++>" /<esc>3F"i
au FileType html inoremap <leader>h href=""<esc>i
au FileType html inoremap <leader>c class=""<esc>i
au FileType html inoremap <leader>i id=""<esc>i

"   open terminal
nnoremap <leader>t :bel vert term<cr>
"   open new file
nnoremap <leader>v :bel vnew<cr>
nnoremap <leader>h :bel new<cr>
nnoremap <leader>e :e .<cr>

let g:netrw_banner=0

"   dictionary
inoremap <c-k> <c-x><c-k>
au FileType html,xhtml setl ofu=htmlcomplete#CompleteTags
au FileType css setl ofu=csscomplete#CompleteCSS
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS 

au FileType javascript set dictionary+=~/.vim/dict/javascript
au FileType typescript,javascript set dictionary+=~/.vim/dict/typescript
au FileType html set dictionary+=~/.vim/dict/html


"   move window
function! WindowNumber()
    let num=tabpagewinnr(tabpagenr())
        return num
endfunction
set statusline=%<%F%M%r\ win:%{WindowNumber()}

nnoremap <space>j <c-w>j
nnoremap <space>k <c-w>k
nnoremap <space>h <c-w>h
nnoremap <space>l <c-w>l

nnoremap <space>1 1<c-w><c-w>
nnoremap <space>2 2<c-w><c-w>
nnoremap <space>3 3<c-w><c-w>
nnoremap <space>4 4<c-w><c-w>
nnoremap <space>5 5<c-w><c-w>
nnoremap <space>6 6<c-w><c-w>

"   window size
nnoremap <c-h> 5<c-w><
nnoremap <c-l> 5<c-w>>
nnoremap <c-j> 5<c-w>-
nnoremap <c-k> 5<c-w>+
nnoremap <down> <c-w>J
nnoremap <up> <c-w>K
nnoremap <left> <c-w>H
nnoremap <right> <c-w>L

set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'morhetz/gruvbox'
call vundle#end()            " required
filetype plugin indent on    " required
