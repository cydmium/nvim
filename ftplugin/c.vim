setlocal expandtab
setlocal shiftwidth=2
setlocal softtabstop=2
augroup c_files
    autocmd!
    autocmd BufWritePre * %s/\s\+$//e
augroup end
