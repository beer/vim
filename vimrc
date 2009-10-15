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
"set softtabstop=4
set bs=2
set t_Co=256
set termencoding=utf8
set foldmethod=indent
" set completeopt=longest,menu
" set dictionary-=~/.vim/funclist.txt
"
autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et

syntax on


autocmd FileType php set omnifunc=phpcomplete#CompletePHP
let python_highlight_all = 1
au BufNewFile,BufRead *.phtml set filetype=php
au BufNewFile,BufRead *.tt setf tt2
au FileType javascript so ~/.vim/indent/javascript.vim
au FileType php so ~/.vim/indent/php.vim

filetype plugin indent on

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

" http://fourdollars.blogspot.com/2009/10/vim-python.html
function! s:python_custom()
    function! s:man(keyword)
	execute '!pydoc ' . a:keyword
    endfunction
    setlocal tabstop=4 expandtab shiftwidth=4
    setlocal foldmethod=indent foldcolumn=4 foldlevel=3 foldnestmax=3
    command! -nargs=1 Man call s:man(<f-args>)
    cnoremap K :!pydoc <cword><CR>
endfunction
if has("autocmd")
    autocmd Filetype python call s:python_custom()
endif
