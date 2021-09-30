"""""""""""""""""""""""""""""""""""""""""""
"
"       vim-plug加载插件
"
"""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
Plug 'sainnhe/sonokai'
Plug 'itchyny/lightline.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'jayli/vim-easycomplete'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'fatih/vim-go'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
call plug#end()

" nerdtree设定
let g:NERDTreeWinPos = "right"
nmap <leader>nn :NERDTreeToggle<CR>
nmap <leader>nf :NERDTreeFind<CR>

" lightline设定
set laststatus=2
" lightline 设置显示当前文件夹名
let g:lightline = {
      \ 'colorscheme': 'sonokai',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified' ] ],
      \   'right': [ [ 'lineinfo' ],
      \              [ 'percent' ],
      \              [ 'fileformat', 'fileencoding', 'filetype' ] ]
      \ },
      \ 'inactive': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified' ] ],
      \   'right': [ [ 'lineinfo' ],
      \              [ 'percent' ],
      \              [ 'fileformat', 'fileencoding', 'filetype' ] ]
      \ },
      \ 'component_function': {
      \   'filename': 'LightlineTruncatedFileName'
      \ }
      \ }

function! LightlineTruncatedFileName()
let l:filePath = expand('%')
    if winwidth(0) > 100
        return l:filePath
    else
        return pathshorten(l:filePath)
    endif
endfunction
