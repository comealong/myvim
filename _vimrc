set ts=4
set sw=4
set nu
set wrap!
set laststatus=2
set autoindent
set cindent
set ignorecase
syntax on
set backspace=indent,eol,start 
nmap <F7> :!g++ -c % <cr>
" 设置编码
" 使终端编码同缓冲文本的编码
let &termencoding=&encoding
" chinese是别名，在Windows简体中文版应该是cp936，Linux系统应该是zh_CN.utf-8
set fileencodings=utf-8,chinese
set encoding=utf-8
set hlsearch

" 设置英文显示字体为Courier_New，中文显示字体为SimHei。h9表示高度为9
" 只设置一种字体时：set guifont=Courier_New:h9
" set gfn=Courier_New:h9 gfw=SimSun:h9
set gfw=SimSun:h9
colorscheme evening
" set keymodel=startsel,stopsel

"if has("gui_running")
"	source $VIMRUNTIME/mswin.vim
"endif

let Tlist_Auto_Highlight_Tag=1  
let Tlist_Auto_Open=1  
let Tlist_Auto_Update=1  
let Tlist_Display_Tag_Scope=1  
let Tlist_Exit_OnlyWindow=1  
let Tlist_Enable_Dold_Column=1  
let Tlist_File_Fold_Auto_Close=1  
let Tlist_Show_One_File=1  
" let Tlist_Use_Right_Window=1  
let Tlist_Use_SingleClick=1  
nnoremap <silent> <F8> :TlistToggle<CR>  

filetype plugin on  
autocmd FileType python set omnifunc=pythoncomplete#Complete  
"autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS  
"autocmd FileType html set omnifunc=htmlcomplete#CompleteTags  
"autocmd FileType css set omnifunc=csscomplete#CompleteCSS  
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags  
autocmd FileType php set omnifunc=phpcomplete#CompletePHP  
autocmd FileType c set omnifunc=ccomplete#Complete  


let g:pydiction_location='~/.vim/tools/pydiction/complete-dict'  
"set smartindent
"set tabstop=4  
"set shiftwidth=4  
"set expandtab  
"set number  

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" OmniCppComplete
let OmniCpp_amespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_Defaultamespaces = ["std", "_GLIBCXX_STD"]
" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview
"au BufewFile,BufRead,BufEnter *.cpp,*.hpp set omnifunc=omni#cpp#complete#Main

"let g:EchoFuncKeyNext='<Esc>+'
"let g:EchoFuncKeyPrev='<Esc>-'
imap <C-u> <M-=>
imap <C-i> <M-->

let g:EchoFuncAutoStartBalloonDeclaration = 1

filetype plugin on  
let g:pydiction_location='~/.vim/complete-dict'  

