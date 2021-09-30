"""""""""""""""""""""""""""""""""""""""""""
"
"      basic 
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
set mouse=a

" 开启文件识别
filetype plugin on
filetype indent on


"""""""""""""""""""""""""""""""""""""""""""
"
"      快捷键设置 
"
"""""""""""""""""""""""""""""""""""""""""""
" 设置Y复制到系统剪贴板
vnoremap Y "+y

" leader键设定
let mapleader=","
nmap <leader>w :w<CR>

" tab操作
nmap <leader>tn :tabnew<CR>
nmap <leader>to :tabonly<CR>
nmap <leader>tc :tabclose<CR>
nmap <leader>tm :tabmove

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

" 防止vim运行太卡
let g:matchparen_timeout = 20
let g:matchparen_insert_timeout = 20
set nocursorcolumn
set norelativenumber
set lazyredraw
