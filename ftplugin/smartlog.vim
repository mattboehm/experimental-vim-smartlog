setlocal foldcolumn=8
setlocal foldmethod=marker
setlocal foldmarker=<<:,:>>
"reload when file changes
setlocal autoread

"fold on log message
nnoremap <buffer> <localleader>; :setlocal foldmarker=<<;,;>><CR>
"fold on function call
nnoremap <buffer> <localleader>: :setlocal foldmarker=<<:,:>><CR>
"reload file
nnoremap <buffer> <localleader>r :e %
"copy file contents into new tab
nnoremap <buffer> <localleader>c ggVGy:tabnew<CR>:set ft=smartlog<CR>pgg
"search for all function calls
nnoremap <buffer> <localleader>f :grep '<<:' %<CR>:copen<CR>
"delete everything except function enter/exit lines
nnoremap <buffer> <localleader>t :%v;\v(\<\<:)\|(:\>\>);d<CR>
