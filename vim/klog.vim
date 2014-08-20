" Vim syntax file
" Language:	klog

syn match   Number       "\d*"
syn match   Number       "\d*ns"

syn match   Todo         "^!.*"

syn match   Comment      "^--.*="
syn match   Comment      "^\s.*"
syn match   Comment      "^\t.*"


" syn match   keyword      ":"
" syn match   keyword      "start"
" syn match   keyword      "done"
" syn match   keyword      "wr"
" syn match   keyword      "rd"
" syn match   keyword      "="

syn match   zhead        "wr.*"
syn match   zhead        "rd.*"
syn match   zhead        "ctrl_core.*"
syn match   cScope       "ctrl_bm.*"


" 有时间研究下
" Vim syntax file
" set fdc=2
" set lsp=5
" syn match zhead "^*.\+" "星号打头算标题
" syn match zhead2 "^\d\(\.\d\d\=\)\=\s\+.*"
" syn match ztxt1 "`1"
" syn match day67 "...\/\(六\|日\).*"
" hi zhead guifg=green gui=bold
hi zhead              guifg=lightgreen
hi zgreen             guifg=green
hi cScope             guifg=#3EFFE2
hi sColon             guifg=#60d080
hi cFunction          gui=NONE  guifg=#B5A1FF
" hi link zhead2 zhead
" hi ztxt1 guifg=red guibg=red
" hi day67 guifg=lightblue
" set fdm=expr
" set foldexpr=Myindent(v:lnum)
" func! Myindent(lnum)
"  let s:a=strlen(matchstr(getline(v:lnum), '^\*\+\s\+\|^\d\(\.\d\d\=\)\=\s\+'))
"  if s:a > 3
"      return '>2'
"  elseif s:a == 2
"      return '>1'
"  else
"      return '='
"  endif
" endf
