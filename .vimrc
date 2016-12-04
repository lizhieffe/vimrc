"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Used by Vundle

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
Plugin 'ascenator/L9', {'name': 'newL9'}

" ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
" ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
" ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
" ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
" From https://github.com/yangyangwithgnu/use_vim_as_ide
" ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
" ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
" ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
" ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
"
" vundle 管理的插件列表必须位于 vundle#begin() 和 vundle#end() 之间
" call vundle#begin()
Plugin 'vim-scripts/phd'
Plugin 'Lokaltog/vim-powerline'
Plugin 'octol/vim-cpp-enhanced-highlight'
"Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'derekwyatt/vim-fswitch'
Plugin 'kshenoy/vim-signature'
Plugin 'vim-scripts/BOOKMARKS--Mark-and-Highlight-Full-Lines'
Plugin 'majutsushi/tagbar'
Plugin 'vim-scripts/indexer.tar.gz'
Plugin 'vim-scripts/DfrankUtil'
Plugin 'vim-scripts/vimprj'
Plugin 'dyng/ctrlsf.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-scripts/DrawIt'
Plugin 'SirVer/ultisnips'
Plugin 'Valloric/YouCompleteMe'
Plugin 'derekwyatt/vim-protodef'
Plugin 'scrooloose/nerdtree'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'gcmt/wildfire.vim'
Plugin 'sjl/gundo.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'suan/vim-instant-markdown'
"Plugin 'lilydjwg/fcitx.vim'
Plugin 'tomasr/molokai'
Plugin 'altercation/vim-colors-solarized'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'

" ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
" ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
" ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
" ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
" End From
" ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
" ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
" ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
" ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
"
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Used by Vundle Finished.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set tabstop=2       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=2    " Indents will have a width of 4

set softtabstop=2   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces

set number          " Show line number

set ft=nasm         " Highlight NASM assembly syntax
au BufRead,BufNewFile *.asm set filetype=nasm

" Highligh char after 80 column.
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/
match Error /\%81v.\+/

"" auto indent
"set autoindent
"filetype plugin indent on

" Avoid writing headers
autocmd BufNewFile *.cpp r /path/to/file.cpp

" ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
" ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
" ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
" ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
" From https://github.com/yangyangwithgnu/use_vim_as_ide
" ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
" ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
" ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
" ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

" Change <Leader> key to ;
let mapleader=";"

" 开启文件类型侦测
filetype on
" 根据侦测到的不同类型加载对应的插件
filetype plugin on

" 定义快捷键到行首和行尾
nmap LB 0
nmap LE $
" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <Leader>y "+y
" 设置快捷键将系统剪贴板内容粘贴至 vim
" 定义快捷键关闭当前分割窗口
nmap <Leader>q :q<CR>
" 定义快捷键保存当前窗口内容
nmap <Leader>w :w<CR>
" 定义快捷键保存所有窗口内容并退出 vim
nmap <Leader>WQ :wa<CR>:q<CR>
" 不做任何保存，直接退出 vim
nmap <Leader>Q :qa!<CR>
" 依次遍历子窗口
nnoremap nw <C-W><C-W>
" 跳转至右方的窗口
nnoremap <Leader>lw <C-W>l
" 跳转至左方的窗口
nnoremap <Leader>hw <C-W>h
" 跳转至上方的子窗口
nnoremap <Leader>kw <C-W>k
" 跳转至下方的子窗口
nnoremap <Leader>jw <C-W>j
" 定义快捷键在结对符之间跳转
nmap <Leader>M %

" 让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC

" 开启实时搜索功能
set incsearch
" 搜索时大小写不敏感
set ignorecase
" 关闭兼容模式
set nocompatible
" vim 自身命令行模式智能补全
set wildmenu

" Color scheme. 
" More can be found
" http://vimcolorschemetest.googlecode.com/svn/html/index-c.html
" For solarized
let g:solarized_termtrans=1
set background=dark
let g:solarized_termcolors=256
set t_Co=256
colorscheme solarized
" End for solarized
"colorscheme molokai
"let g:molokai_original = 1
"colorscheme phd

" 禁止光标闪烁
" Also need to run this on Ubuntu (verified on 14.04)
" gconftool-2 --set /apps/gnome-terminal/profiles/Default/cursor_blink_mode --type string off
" Or maybe this on newer Ubuntu
" gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$(gsettings get org.gnome.Terminal.ProfilesList default|tr -d \')/ cursor-blink-mode off
set gcr=a:block-blinkon0
" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T

" 总是显示状态栏
set laststatus=2
" 显示光标当前位置
set ruler
" 开启行号显示
set number
" 高亮显示当前行/列
set cursorline
set cursorcolumn
" 高亮显示搜索结果
set hlsearch

" 设置 gvim 显示字体
set guifont=YaHei\ Consolas\ Hybrid\ 11.5
" 禁止折行
set nowrap
" 设置状态栏主题风格
let g:Powerline_colorscheme='solarized256'

" 开启语法高亮功能
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on

" 自适应不同语言的智能缩进
filetype indent on
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=2
" 设置格式化时制表符占用空格数
set shiftwidth=2
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=2

" 基于缩进或语法进行代码折叠
" za，打开或关闭当前折叠；zM，关闭所有折叠；zR，打开所有折叠
"set foldmethod=indent
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable

" For vim-fswitch
" *.cpp 和 *.h 间切换
nmap <silent> <Leader>sw :FSHere<cr>

" YCM 补全菜单配色
" 菜单
highlight Pmenu ctermfg=2 ctermbg=3 guifg=#005f87 guibg=#EEE8D5
" 选中项
highlight PmenuSel ctermfg=2 ctermbg=3 guifg=#AFD700 guibg=#106900
" 补全功能在注释中同样有效
let g:ycm_complete_in_comments=1
" 允许 vim 加载 .ycm_extra_conf.py 文件，不再提示
let g:ycm_confirm_extra_conf=0
" 开启 YCM 标签补全引擎
let g:ycm_collect_identifiers_from_tags_files=1
" 引入 C++ 标准库tags
set tags+=/data/misc/software/misc./vim/stdcpp.tags
" YCM 集成 OmniCppComplete 补全引擎，设置其快捷键
inoremap <leader>; <C-x><C-o>
" 补全内容不以分割子窗口形式出现，只显示补全列表
set completeopt-=preview
" 从第一个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=1
" 禁止缓存匹配项，每次都重新生成匹配项
let g:ycm_cache_omnifunc=0
" 语法关键字补全         
let g:ycm_seed_identifiers_with_syntax=1

" 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list
" 常用操作：回车，打开选中文件；r，刷新工程目录文件列表；I（大写），显示/隐藏隐藏文件；m，出现创建/删除/剪切/拷贝操作列表。键入
" <leader>fl 后，右边子窗口为工程项目文件列表
nmap <Leader>fl :NERDTreeToggle<CR>
" 设置NERDTree子窗口宽度
let NERDTreeWinSize=32
" 设置NERDTree子窗口位置
let NERDTreeWinPos="right"
" 显示隐藏文件
let NERDTreeShowHidden=1
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1

" ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
" For ctags.
"
" Ctrl + ]                  -> Go to definition
" Ctrl + T                  -> Jump back from the definition
" Ctrl + w, Ctrl + ]        -> Open the definition in a horizontal split
" Ctrl + \                  -> Open the definition in a new tab
" Alt + ]                   -> Open the definition in a vertial split
" Ctrl + Left MouseClick    -> Go to definition
" Ctrl + Right MouseClick   -> Jump back from definition
"
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
" Add extra lookup directory.
set tags+=tags;$HOME
hi Pemnu ctermbg=blue ctermfg=white
hi PmenuSel ctermbg=yellow ctermfg=black
" ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
" ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
" ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

" ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
" Ctags auto update. (xolox/vim-misc)
" To generate the Ctags, use ":UpdateTags -R ."
" This should be executed automatically every once in a while.
" ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
" ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
" ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
 
" ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
" ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
" ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
" ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
" End From
" ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
" ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
" ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
" ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
"
