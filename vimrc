""" 字符编码
"设置文件的代码形式
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,chinese,cp936

"vim的菜单乱码解决：
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

"vim提示信息乱码的解决
language messages zh_CN.utf-8 

set ff=unix

"<leader>
let mapleader = "\<space>"
let g:mapleader = "\<space>"

" 重置ESC
inoremap jk <ESC>

nnoremap <leader><space><space>  :
nnoremap <leader>w  :w<cr>
nnoremap <leader>q  :q<cr>
nnoremap <leader>qq :q!<cr>
nnoremap <leader>wq :wq<cr>

" buffer 操作
nnoremap <leader>ls :ls<cr>
nnoremap <leader>bn :bn<cr>
nnoremap <F3>		:bn<cr>
nnoremap <leader>bp :bp<cr>
nnoremap <F4>		:bp<cr>
nnoremap <leader>bd :bd<cr>
nnoremap <leader>bu :buffer 
nnoremap <leader>b1 :1b<cr>
nnoremap <leader>b2 :2b<cr>
nnoremap <leader>b3 :3b<cr>
nnoremap <leader>b4 :4b<cr>
nnoremap <leader>b5 :5b<cr>
nnoremap <leader>b6 :6b<cr>
nnoremap <leader>b7 :7b<cr>
nnoremap <leader>b8 :8b<cr>
nnoremap <leader>b9 :9b<cr>
nnoremap <leader>b0 :10b<cr>


"关闭当前的 tab
nnoremap <leader>tc :tabc<CR>
"关闭所有其他的 tab
nnoremap <leader>to :tabo<CR>
"查看所有打开的 tab
nnoremap <leader>ts :tabs<CR>
"前一个 tab
nnoremap <leader>tp :tabp<CR>
nnoremap <F5>	   :tabp<CR>
"后一个 tab
nnoremap <leader>tn :tabn<CR>
nnoremap <F6>	   :tabn<CR>

" 窗口切换
"nnoremap <c-w> <c-w>w
nnoremap <leader>j  <c-w>j
nnoremap <leader>h  <c-w>h
nnoremap <leader>k  <c-w>k
nnoremap <leader>l  <c-w>l
nnoremap <leader>wc <c-w>c
nnoremap <leader>wv <c-w>v
nnoremap <leader>ws <c-w>s

" 翻页
nnoremap <leader>f <c-f>
nnoremap <leader>b <c-b>
" 到最后一行
nnoremap <leader>gg <s-g>

"鼠标点击定位光标
set mouse=a

"显示光标当前位置
set ruler

"开启行号
set number

"突出显示当前行
set cursorline

"tab空格
set tabstop=4
set softtabstop=4
set shiftwidth=4

" 自动缩进
set autoindent

call plug#begin('~/.vim/plugged')
	Plug 'scrooloose/nerdtree' 
"	Plug 'fholgado/minibufexpl.vim'
"	Plug 'flazz/vim-colorschemes'
	Plug 'brantb/vim-colors-solarized'
	Plug 'vim-scripts/AutoComplPop'
call plug#end()

"vim启动时打开
"auto VimEnter * NERDTree
"NERDTree快捷键
map <F2>		:NERDTreeMirror<CR>
map <leader>tr  :NERDTreeMirror<CR>
map <F2>		:NERDTreeToggle<CR>
map <leader>tr	:NERDTreeToggle<CR>


"开启高亮
syntax on
"配色方案
if ((has("win32") || has("win64") || has("win95") || has("win16")) && has('gui_running'))
"	set background=light
	set background=dark
"	colorscheme solarized 
	colorscheme peachpuff
	
	"设置字体
	set guifont=Consolas:h12
	set guioptions-=T

endif


