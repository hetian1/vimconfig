"""""" 键位设置

"<leader>
let mapleader = "\<space>"
let g:mapleader = "\<space>"
""let mapleader = ";"

" 重置ESC
inoremap jk <ESC>

"nnoremap <leader><space><space>  :
nnoremap <leader>;  :
nnoremap <leader>w  :w<cr>
nnoremap <leader>q  :q<cr>
nnoremap <leader>qq :q!<cr>
nnoremap <leader>wq :wq<cr>

" buffer 操作
nnoremap <leader>ls ls<cr>
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

" 快速字符
inoremap <leader>1 !
inoremap <leader>2 @
inoremap <leader>3 #
inoremap <leader>4 $
inoremap <leader>5 %
inoremap <leader>6 ^
inoremap <leader>7 &
inoremap <leader>8 *
inoremap <leader>9 (
inoremap <leader>0 )
inoremap <leader>` ~
inoremap <leader>; :
inoremap <leader>, <
inoremap <leader>. >
inoremap <leader>/ ?
inoremap <leader>\\ |
inoremap <leader>[ {
inoremap <leader>] }
inoremap <leader>' "
inoremap <leader>- _
inoremap <leader>= +


"关闭当前的 tab
nnoremap <leader>tc :tabc<CR>
"关闭所有其他的 tab
nnoremap <leader>to :tabo<CR>
"查看所有打开的 tab
nnoremap <leader>ts :tabs<CR>
"前一个 tab
nnoremap <leader>tp :tabp<CR>
nnoremap <F5>	    :tabp<CR>
"后一个 tab
nnoremap <leader>tn :tabn<CR>
nnoremap <F6>	    :tabn<CR>

" 窗口切换
nnoremap <leader>j  <c-w>j
nnoremap <leader>h  <c-w>h
nnoremap <leader>k  <c-w>k
nnoremap <leader>l  <c-w>l
nnoremap <leader>wc <c-w>c
nnoremap <leader>wv <c-w>v
nnoremap <leader>ws <c-w>s
nnoremap <leader>ww <c-w>w

" 翻页
nnoremap <leader>f <c-f>
nnoremap <leader>b <c-b>
" 到最后一行
nnoremap <leader>gg <s-g>


"""""" 字符编码和语言
" 设置文件的代码形式
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,chinese,cp936

" vim的菜单乱码解决：
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" vim提示信息乱码的解决
language messages zh_CN.utf-8 
set langmenu=zh_CN.UTF-8
set helplang=cn
set ff=unix


" 禁止生成临时文件
set nobackup
set noswapfile
" 自动保存
set autowrite

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

" 搜索忽略大小写
set ignorecase
" 搜索逐字符高亮
set hlsearch
set incsearch

" 我的状态行显示的内容（包括文件类型和解码）
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]
" 总是显示状态行
set laststatus=2
" 命令行（在状态行下）的高度，默认为1，这里是2
set cmdheight=2
" 侦测文件类型
filetype on
" 载入文件类型插件
filetype plugin on
" 为特定文件类型载入相关缩进文件
filetype indent on
" 打开文件类型检测，加入这句话才可以用只能补全
set completeopt=longest,menu


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

"自动补全
"":inoremap ( ()<ESC>i
"":inoremap ) <c-r>=ClosePair(')')<CR>
"":inoremap { {<CR>}<ESC>O
"":inoremap } <c-r>=ClosePair('}')<CR>
"":inoremap { {}<ESC>i
"":inoremap [ []<ESC>i
"":inoremap ] <c-r>=ClosePair(']')<CR>
"":inoremap " ""<ESC>i
"":inoremap ' ''<ESC>i
""function! ClosePair(char)
""	if getline('.')[col('.') - 1] == a:char
""		return "\<Right>"
""	else
""		return a:char
""	endif
""endfunction
