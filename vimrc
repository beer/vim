set background=dark
set cindent
set cursorline
set encoding=utf8
set fileencoding=utf8
set fileencodings=utf8,cp950,latin1
set hls
set nu
set ru
set secure
set sw=4
set bs=2
set t_Co=256
set termencoding=utf8
" set completeopt=longest,menu
" set dictionary-=~/.vim/funclist.txt

syntax on

au BufNewFile,BufRead *.phtml set filetype=php
au BufNewFile,BufRead *.tt setf tt2
au FileType javascript so ~/.vim/indent/javascript.vim
au FileType php so ~/.vim/indent/php.vim

" autocmd FileType php set omnifunc=phpcomplete#CompletePHP

highlight Comment ctermfg=darkgreen
highlight CursorLine cterm=none ctermbg=blue
highlight Search term=reverse ctermbg=green ctermfg=7

" CTRL-A is Select all
noremap <C-A> gggH<C-O>G
inoremap <C-A> <C-O>gg<C-O>gH<C-O>G
cnoremap <C-A> <C-C>gggH<C-O>G

" CTRL+N is new tab
noremap <C-I> :tabe<CR>

" CTRL+[ is previous tab
map <C-]> :tabp<CR>
"map <C-[> :tabp<CR>

" CTRL+} is next tab
map <C-\> :tabn<CR>

" CTRL+d is close tab
noremap <C-D> :tabc<CR>
