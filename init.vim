"""""""""""""""""""""""""""""""""""""""""""
"
"      基础设定 
"
"""""""""""""""""""""""""""""""""""""""""""
set nocompatible
set so=7

" 先关闭高亮，最后再打开
syntax off
set nu

" tab键设定
set ts=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

" 鼠标设置
" set mouse=a

" 开启文件识别
filetype plugin on
filetype indent on


"""""""""""""""""""""""""""""""""""""""""""
"      快捷键设置 
"""""""""""""""""""""""""""""""""""""""""""
" 设置Y复制到系统剪贴板
vnoremap Y "+y

" leader键设定
let mapleader="\<space>"
nmap <leader>w :w<CR>

" tab操作
nmap <leader>tn :tabnew<CR>
nmap <leader>to :tabonly<CR>
nmap <leader>tc :tabclose<CR>
nmap <leader>tm :tabmove
nmap <leader>te :tabedit <C-r>=expand("%:p:h")<cr>/

nmap <Tab> :tabnext<CR>
nmap <S-Tab> :tabprevious<CR>

" 快速移动窗口
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l

nmap <leader>cn :cn<CR>
nmap <leader>cp :cp<CR>

" 快速在buffer间跳转
" 感觉用不到，待删除
nmap <leader>bd :bdelete<CR>
nmap <leader>ba :1,1000 bd!<CR>


" 进入到buffer的文件夹
" map <leader>cd :cd %:p:h<cr>:pwd<cr>

"""""""""""""""""""""""""""""""""""""""""""
"      防止vim运行太卡 
"""""""""""""""""""""""""""""""""""""""""""
let g:matchparen_timeout = 20
let g:matchparen_insert_timeout = 20
set nocursorcolumn
set norelativenumber
set lazyredraw

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

"""""""""""""""""""""""""""""""""""""""""""
"
"       vim-plug加载插件
"
"""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
Plug 'itchyny/lightline.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-scripts/bufexplorer.zip'
Plug 'mg979/vim-visual-multi'
Plug 'tpope/vim-fugitive'
call plug#end()

" nerdtree设定
let g:NERDTreeWinPos = "right"
nmap <leader>n :NERDTreeToggle<CR>
" nmap <leader>nf :NERDTreeFind<CR>

" vim-go 设定
" au filetype go nmap <leader>gr :GoRun 
" au filetype go nmap <leader>gt :GoTest
" au filetype go nmap <leader>gm :GoMetaLinter
" au filetype go nmap <leader>gi :GoInfo<CR>

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
            \ 'colorscheme': 'catppuccin',
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


"""""""""""""""""""""""""""""""""""""""""""
"
"       界面设定
"
"""""""""""""""""""""""""""""""""""""""""""
" 开启true color 
if has('termguicolors')
    set termguicolors
    set winblend=0
    set wildoptions=pum
    set pumblend=5
    set background=dark
endif

" 开启高亮
syntax enable
syntax on

" 配色方案设置 
colorscheme catppuccin
highlight Normal guibg=NONE ctermbg=None
