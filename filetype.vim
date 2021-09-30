"""""""""""""""""""""""""""""""""""""""""""
"
"       识别文件类型
"
"""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on

" 将less,scss识别为css
autocmd BufRead,BufNewFile *.less,*.scss set filetype=css
autocmd BufRead,BufNewFile *.nim,*.nimble set filetype=nim

" 将xtpl,vue识别为html
autocmd BufRead,BufNewFile *.xtpl,*.we,*.vue set filetype=html

" 识别markdown文件
autocmd BufRead,BufNewFile *.mkd,*.markdown,*.mdwn,*.md set filetype=markdown

" 忽略文件
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/ignored_files/*

" 最大行数设置
au Filetype go,javascript,python,vim,shell,ruby,c,css,html setlocal synmaxcol=300

