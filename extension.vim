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
Plug 'vim-scripts/bufexplorer.zip'
Plug 'mg979/vim-visual-multi'
Plug 'tpope/vim-fugitive'
call plug#end()

" nerdtree设定
let g:NERDTreeWinPos = "right"
nmap <leader>n :NERDTreeToggle<CR>
" nmap <leader>nf :NERDTreeFind<CR>

" vim-go 设定
au filetype go nmap <leader>gr :GoRun 
au filetype go nmap <leader>gt :GoTest
au filetype go nmap <leader>gm :GoMetaLinter
au filetype go nmap <leader>gi :GoInfo<CR>

" bufexplorer设定
let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1
let g:bufExplorerFindActive=1
let g:bufExplorerSortBy='name'
nmap <leader>o :BufExplorer<cr>

" lightline设定
set laststatus=2
" lightline 设置显示当前文件夹名
let g:lightline = {
      \ 'colorscheme': 'sonokai',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ],
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
      \ 'component': {
      \   'fugitive': '%{exists("*FugitiveHead")?FugitiveHead():""}'
      \ },
      \ 'component_visible_condition': {
      \   'fugitive': '(exists("*FugitiveHead") && ""!=FugitiveHead())'
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


