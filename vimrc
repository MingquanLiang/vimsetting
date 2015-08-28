set showmode
syntax enable " Show colourfully
syntax on
set ruler " <==> set noruler
"set cin
set sw=4
set background=dark  " make the Note easy to see "
"set autoindent " automatical Indentation
set smartindent  " smart to indent
set tabstop=4  " means Tab key occupy 4 blank space"
set shiftwidth=4
"set showmatch
set incsearch " In the process of type string will start searching at the same time
"set foldmethod=syntax " fold syntax automatically 
"set foldmethod=manual "set the fold manually 
"set foldnestmax=2

"set nocompatible

set cursorline

let mapleader = ","

" ==set mouse=a means enable mouse== "
set mouse=a 
if has('mouse')
   set mouse=v
endif

" ===Show the line number automatically=== "
set nu

 


" ====== set some key for fast key ===== such as use ctrl+a == choose all
"map <C-A> ggVGY
"map! <C-A> <Esc>ggVGY

"vmap <C-c> "+y





"Use space to folder function
"nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR> 

" ==========================Set onmicppcompete ============================= "
set filetype=c
set nocp  " means that when choose some lines with mouse, it will copy them automatically "
filetype plugin on
" ==========================Set onmicppcompete ============================= "

" ==============================Set Ctags=================================== "
" map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
map <silent> <leader>tag :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
"let Tlist_Show_One_File = 1 " Open more than one windows
let Tlist_Show_One_File = 0 " Open more than one windows
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window = 1
set tags=tags
"set autochdir
" ==============================Set Ctags=================================== "

" ==============================Set Tlist=================================== "
let g:proj_flags='i'
map <silent> <leader>tl :TlistToggle<CR>
let Tlist_Show_One_File=1
let Tlist_OnlyWindow=1
let Tlist_Use_Right_Window=0
let Tlist_Sort_Type='name'
let Tlist_Exit_OnlyWindow=1
let Tlist_Show_Menu=1
let Tlist_Max_Submenu_Items=10
let Tlist_Max_Tag_length=20
let Tlist_Use_SingleClick=0
let Tlist_Auto_Open=0
let Tlist_Close_On_Select=0
let Tlist_File_Fold_Auto_Close=1
let Tlist_GainFocus_On_ToggleOpen=0
let Tlist_Process_File_Always=1
let Tlist_WinHeight=10
let Tlist_WinWidth=18
let Tlist_Use_Horiz_Window=0
" ==============================Set Tlist=================================== "

if filereadable("libupgradeSystem.vim")
	source libupgradeSystem.vim
endif
if filereadable("lib3Gtools.vim")
	source lib3Gtools.vim
endif

let g:C_SourceCodeExtensions = ''

set sessionoptions-=curdir
set sessionoptions+=sesdir

"======================== <mapleader> + 'ne' to open the Tree on the left , <mapleader> and tto can be modified========================"
nmap <silent> <leader>ne :NERDTreeToggle<cr>
" ==when open the Tree one the left, the filename .vim$,~$,.o,.pyc is can not appear"
"let NERDTreeIgnore=['\.vim$', '\~$', '\.o$','\.pyc$']
" ==NERDTreeShowHidden=0 means that not show the hidden file"
let NERDTreeShowHidden=1
let NERDTreeSortOrder=['\/$','\.cpp$','\.c$', '\.h$', '*']
let NERDTreeCaseSensitiveSort=0  
let NERDTreeWinSize=30
let NERDTreeShowOneFile=1
"let NERDTreeShowBookmarks=1
let NERDTreeQuitOnOpen=0    
"autocmd vimenter * NERDTree  " start NERDTree automatically when use vim
"================== start NERDTree automatically when use vim and without any paramater
"autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"================== start NERDTree automatically when use vim and without any paramater


"======================== <mapleader> + 'ne' to open the Tree on the left , <mapleader> and tto can be modified========================"

" =================================Set winmanager================================== "
nmap <silent> <leader>wm :WMToggle<cr>
" =================================Set winmanager================================== "

" autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

nmap <silent> <leader>tmk :Bookmark expand(/"<cword>/")<cr>
let g:alternateNoDefaultAlternate = 1

if has("autocmd")
   autocmd BufRead *.txt set tw=78
   autocmd BufReadPost *
      \ if line("'\"") > 0 && line ("'\"") <= line("$") |
      \   exe "normal g'\"" |
      \ endif
endif

let is_sh      = 1
let is_bash      = 1
let g:sh_fold_enabled = 1

" set the 'tab' and blank
autocmd BufNewFile,BufRead *.txt,*.py,*.sh,*.tks,*.pl,*.exp,*.awk,*.sed,*.php,*.js set shiftwidth=4 | set expandtab
autocmd BufRead Makefile set noexpandtab

set showcmd
"set mouse=a
"set mouse=v
"enable highlight & disable highlight when vim searching
set hls
"set nohls
