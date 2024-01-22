" android_logcat_highlight.vim

" Define the syntax highlighting rules for Android logcat logs
syntax match androidLogError /\v^\d{2}[-\/.]\d{2}\s+\d{2}:\d{2}:\d{2}\.\d{3}\s+\d+\s+\d+\s+E.+$/
syntax match androidLogFatal /\v^\d{2}[-\/.]\d{2}\s+\d{2}:\d{2}:\d{2}\.\d{3}\s+\d+\s+\d+\s+F.+$/
syntax match androidLogWarning /\v^\d{2}[-\/.]\d{2}\s+\d{2}:\d{2}:\d{2}\.\d{3}\s+\d+\s+\d+\s+W.+$/
syntax match androidLogInfo /\v^\d{2}[-\/.]\d{2}\s+\d{2}:\d{2}:\d{2}\.\d{3}\s+\d+\s+\d+\s+I.+$/
syntax match androidLogDebug /\v^\d{2}[-\/.]\d{2}\s+\d{2}:\d{2}:\d{2}\.\d{3}\s+\d+\s+\d+\s+D.+$/
syntax match androidLogVerbose /\v^\d{2}[-\/.]\d{2}\s+\d{2}:\d{2}:\d{2}\.\d{3}\s+\d+\s+\d+\s+V.+$/
" Set the colors for different log priorities
highlight default link androidLogError Error
highlight default link androidLogFatal Error
highlight default link androidLogWarning WarningMsg
highlight default link androidLogInfo Normal
highlight default link androidLogDebug Visual
highlight default link androidLogVerbose Comment

" Enable syntax highlighting for Android logcat logs
autocmd FileType log call EnableAndroidLogcatSyntax()

function! EnableAndroidLogcatSyntax()
    setlocal syntax=androidLogcat
endfunction

