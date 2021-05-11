setlocal expandtab
setlocal shiftwidth=2
setlocal softtabstop=2
augroup lua_files
    autocmd!
    autocmd BufWritePre * %s/\s\+$//e
augroup end
