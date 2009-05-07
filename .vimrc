set cindent
set hls
set incsearch
set ru
set secure
set nocompatible
set t_Co=256
set termencoding=utf8
set encoding=utf8
set fileencodings=utf8,big5,gb,utf16le
set sw=4
set ts=4
set sts=4
set number
set foldmethod=marker
syntax on
colorscheme desert
" vim -b : edit binary using xxd-format!
augroup Binary
au!
au BufReadPre  *.bin let &bin=1
au BufReadPost *.bin if &bin | %!xxd
au BufReadPost *.bin set ft=xxd | endif
au BufWritePre *.bin if &bin | %!xxd -r
au BufWritePre *.bin endif
au BufWritePost *.bin if &bin | %!xxd
au BufWritePost *.bin set nomod | endif
augroup END

