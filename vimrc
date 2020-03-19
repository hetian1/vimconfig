call plug#begin('~/.vim/plugged')
	Plug 'scrooloose/nerdtree' 
	Plug 'fholgado/minibufexpl.vim'
	Plug 'flazz/vim-colorschemes'
call plug#end()



"vim启动时打开
auto VimEnter * NERDTree
"NERDTree快捷键
map <F2> :NERDTreeMirror<CR>
map <F2> :NERDTreeToggle<CR>
"<leader>tc 关闭当前的 tab
map <leader>tc :tabc<CR>
"<leader>to 关闭所有其他的 tab
map <leader>to :tabo<CR>
"<leader>ts 查看所有打开的 tab
map <leader>ts :tabs<CR>
"<leader>tp 前一个 tab
map <leader>tp :tabp<CR>
map <F5> :tabp<CR>
"<leader>tn 后一个 tab
map <leader>tn :tabn<CR>
map <F6> :tabn<CR>

"minibufexpl
let g:miniBufExplMapWindowNavVim=1   
let g:miniBufExplMapWindowNavArrows=1   
let g:miniBufExplMapCTabSwitchBufs=1   
let g:miniBufExplModSelTarget=1  
let g:miniBufExplMoreThanOne=0
map <F3> :MBEbp<CR>
map <F4> :MBEbn<CR>

set number
"开启高亮
syntax on
"显示光标当前位置
set ruler
"开启行号
set number
"突出显示当前行
set cursorline
"配色方案
colorscheme peachpuff
"tab空格
set tabstop=4
set softtabstop=4
set shiftwidth=4
