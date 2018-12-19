""""""""""""""""""""""""""""""""""""""""
set background=dark
colorscheme desert
""""""""""""""""""""taglist""""""""""""""""""""
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=1
set cscopetag
nmap <silent> <F4>  :TlistToggle<CR>
""""""""""""""""""""cscope"""""""""""""""""""""
"enter root dir of your project and run cscope -Rbq
"""""""""""""""""""""""""""""""""""""""""""""""
if has("cscope")
    set csprg=/usr/bin/cscope
" first ctags last cscope    
    set csto=1
" both use cscope and ctags
    set cst
    set nocsverb
" add any database in current directory
    if filereadable("cscope.out")
        cs add cscope.out
    endif
    set csverb
endif

nmap css :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap csg :cs find g <C-R>=expand("<cword>")<CR><CR>
"""""""""""""""""""""""""""""""""""""""""""""""
"find definition and open in a vertically split window
":vsp | cs find g <name>
"""""""""""""""""""""""""""""""""""""""""""""""
nmap csc :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap cst :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap cse :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap csf :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap csd :cs find d <C-R>=expand("<cword>")<CR><CR>
nmap csi :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
""""""""""""""""""""winmagager""""""""""""""""""""
let g:winManagerWindowLayout='FileExplorer|TagList' 
nmap wm :WMToggle<cr>

""""""""""""""""""""minibuf""""""""""""""""""""
let g:miniBufExplMapCTabSwitchBufs=1 
let g:miniBufExplMapWindowsNavVim=1 
let g:miniBufExplMapWindowNavArrows=1
hi MBENormal guifg=grey77
""""""""""""""""""""ctags""""""""""""""""""""
set tags=tags;
set autochdir

""""""""""""""""""""底部滚动条""""""""""""""""""""
"set guioptions-=m
set guioptions-=T
set guioptions+=b

""""""""""""""""""""状态栏""""""""""""""""""""
set laststatus=2
highlight StatusLine guifg=SlateBlue guifg=Gray

""""""""""""""""""""搜索栏""""""""""""""""""""
set incsearch
set hls
set ignorecase smartcase

""""""""""""""""""""match pairs""""""""""""""""""""
set showmatch
set matchtime=5
set cursorline cursorcolumn

""""""""""""""""""""中文""""""""""""""""""""
set fileencodings=utf-8,gbk,big5,euc-jp,gb2312

""""""""""""""""""""折叠""""""""""""""""""""
set foldcolumn=2
highlight Folded guibg=grey guifg=blue
highlight Folded guibg=black guifg=white

set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4

set autoindent
set smartindent

""""""""""""""""""""行号""""""""""""""""""""
set nu
""""""""""""""""""""不折行""""""""""""""""""""
set nowrap
set ru
set nocompatible
set cmdheight=1
set iskeyword+=_,$,@,%,#,-
set mousemodel=popup
set mouse=a
set bufhidden=hide
set backspace=2
set autoread
set fileformats=unix,dos
hi Cursor guibg=Green guifg=Black
hi comment guifg=gray50
              
""""""""""""""""""""无备份""""""""""""""""""""
set nobackup
set noundofile
set noswapfile


filetype on
filetype plugin on
filetype indent on
syntax enable 
syntax on

set wildmenu
set showcmd
set ruler

""""""""""""""""""""NERDtree""""""""""""""""""""
let NERDChristmasTree=0
let NERDTreeWinSize=35
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$','\.swp$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos="left"
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
noremap <F6> :NERDTreeToggle<CR>

""""""""""""""""""""Vundle""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
"
""""""""""""""""""""YouCompleteMe"""""""""""""
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>*'
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 0

nmap <leader>jl :YcmCompleter GoToDeclaration<CR>
nmap <leader>jf :YcmCompleter GoToDefinition<CR>
nmap <leader>jg :YcmCompleter GoToDefinitionElseDeclaration<CR>
nmap <leader>m :YcmCompleter FixIt<CR>
nmap <F5> :YcmDiags<CR>

