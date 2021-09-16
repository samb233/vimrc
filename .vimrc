"""""""""""""""""""""""""""""""""""""""""""
"
"      .vimrc备份，不断更新中 
"
"""""""""""""""""""""""""""""""""""""""""""
set nocompatible

syntax off
set nu

" tab键设定
set ts=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent


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


"""""""""""""""""""""""""""""""""""""""""""
"
"       防止 VIM 运行太卡
"
"""""""""""""""""""""""""""""""""""""""""""
au Filetype go,javascript,python,vim,shell,ruby,c,css,html setlocal synmaxcol=300
let g:matchparen_timeout = 20
let g:matchparen_insert_timeout = 20
set nocursorcolumn
set norelativenumber
set lazyredraw


"""""""""""""""""""""""""""""""""""""""""""
"
"       vim-plug加载插件
"
"""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
Plug 'sainnhe/edge'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'fatih/vim-go'
Plug 'jayli/vim-easycomplete'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'mg979/vim-visual-multi'
call plug#end()


"""""""""""""""""""""""""""""""""""""""""""
"
"       快捷键设置
"
"""""""""""""""""""""""""""""""""""""""""""
" tab操作多tab
nmap tn :tabnew
nmap <Tab> :tabnext<CR>
nmap <S-Tab> :tabprevious<CR>

" 设置Y复制到系统剪贴板
vnoremap Y "+y

" 快速左右移动光标
nnoremap <C-l> 4l
nnoremap <C-h> 4h

" 鼠标设置
"set mouse=n 

" leader键设定
let mapleader="\<space>"

" nerdtree设定
nnoremap <leader>n :NERDTreeMirror<CR>
nnoremap <leader>n :NERDTreeToggle<CR>

" 快速在buffer间跳转
nmap . :bnext<CR>
nmap , :bprevious<CR>
nmap <leader>c :bdelete<CR>
nmap <leader>w :w<CR>

"  vim-go 设定
nmap gr :GoRun 
nmap gt :GoTest
nmap gm :GoMetaLinter
nmap gi :GoInfo<CR>
nnoremap <leader>. :cn<CR>
nnoremap <leader>, :cp<CR>


"""""""""""""""""""""""""""""""""""""""""""
"
"      外观设置 
"
"""""""""""""""""""""""""""""""""""""""""""
" 开启true color 
if has('termguicolors')
    set termguicolors
endif

" 开启高亮
syntax enable
syntax on

" 配色方案设置 
let g:edge_style = 'default'
let g:edge_enable_italic = 1
colorscheme edge 
set background=light
let g:airline_theme='edge'

" vim-airline设置 
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1      "tabline中当前buffer两端的分隔字符
" let g:airline#extensions#tabline#left_sep = ' '   "tabline中未激活buffer两端的分隔字符
" let g:airline#extensions#tabline#left_alt_sep = '|'      
" let g:airline#extensions#tabline#buffer_nr_show = 1      "tabline中buffer显示编号
let g:airline#extensions#tabline#fnamemod = ':t'    