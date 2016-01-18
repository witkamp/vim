au BufRead,BufNewFile *.dxl,*.inc	set filetype=dxl
au BufRead,BufNewFile *.dxl,*.inc	nnoremap <buffer> K :silent! !cmd.exe /c start keyhh -\#klink "<cword>" "C:\Programme\Telelogic\Doors_8.3\help\dxl.chm" <CR><CR>
