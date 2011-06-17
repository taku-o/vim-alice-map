" alice-map.vim:
" Load Once:
if &cp || exists("g:loaded_alice_map")
    finish
endif
let g:loaded_alice_map = 1
let s:keepcpo = &cpo
set cpo&vim
" ---------------------------------------------------------------------

function s:URLEncode()
    let l:line = getline('.')
    let l:encoded = AL_urlencode(l:line)
    call setline('.', l:encoded)
endfunction

function s:URLDecode()
    let l:line = getline('.')
    let l:encoded = AL_urldecode(l:line)
    call setline('.', l:encoded)
endfunction
command! -nargs=0 -range URLEncode :<line1>,<line2>call <SID>URLEncode()
command! -nargs=0 -range URLDecode :<line1>,<line2>call <SID>URLDecode()


" ---------------------------------------------------------------------
let &cpo= s:keepcpo
unlet s:keepcpo

