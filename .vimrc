set nocompatible

set encoding=utf-8
let mapleader = " "

colorscheme elflord
set background=dark

set history=500
set timeoutlen=100

filetype indent plugin on

set autoread
au FocusGained,BufEnter * checktime

set number
"set relativenumber


set scrolloff=8
set wildmenu
set clipboard=unnamedplus
set backspace=eol,start,indent
set mouse=a
set showmode
set showmatch
set wrap
set autoindent
set smartindent
set nobackup
set smarttab
set t_Co=256
set t_vb=
set autochdir
set noerrorbells
set novisualbell
set cursorline
set colorcolumn=100

set splitbelow
set splitright





set tabstop=4
set shiftwidth=4
set expandtab

" st don't work, but alacritty is ok.
let &t_SI = "<Esc>]50;CursorShape=1\x7" " 插入模式下光标为竖线 
let &t_SR = "<Esc>]50;CursorShape=2\x7" " 替换模式下光标为下划线 
let &t_EI = "<Esc>]50;CursorShape=0\x7"  " 正常模式下光标为方块





let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"


set foldmethod=indent
set foldlevel=99


set hlsearch
set incsearch
set smartcase
nnoremap <leader>; :nohlsearch<CR>


nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>r :source $MYVIMRC<CR>
"nnoremap <leader>e :E<CR>

" open the error console
nnoremap <leader>cc :botright cope<CR> 

"nnoremap yie i<ESC>ggVGygi<ESC>
nnoremap yie :%y<CR>
vnoremap <leader>y "+y<ESC>



highlight DisplayTabAndSpace Ctermbg = red
autocmd InsertEnter,CursorMovedI * match DisplayTabAndSpace /\%.l\%#\@<!\s\+$/
autocmd InsertLeave * call clearmatches()



let g:toggle_sidebar = 1

function! ToggleSidebar()
  if g:toggle_sidebar == 1
    " 第一次按下快捷键时，执行 :E 并将变量值改为 0
    execute "E"
    let g:toggle_sidebar = 0
  else
    " 后续按下快捷键时，执行 Ctrl ^ 并将变量值恢复为 1
    normal <C-^>
    let g:toggle_sidebar = 1
  endif
endfunction

" 设置自定义快捷键来调用 ToggleSidebar() 函数
nnoremap <silent> <Leader>e :call ToggleSidebar()<CR>



" to auto switch fcitx input method.
function! Fcitx2en()
    let input_status = system('fcitx-remote')
    if input_status == 2
        let b:inputtoggle = 1
        call system('fcitx-remote -c')
    endif
endfunction

function! Fcitx2zh()
    try
        if b:inputtoggle == 1
            call system('fcitx-remote -o')
            let b:inputtoggle = 0
        endif
    catch /inputtoggle/
        let b:inputtoggle = 0
    endtry
endfunction

au InsertLeave * call Fcitx2en()
au InsertEnter * call Fcitx2zh()







set laststatus=2
set statusline=\ %{HasPaste()}%<%-15.25(%f%)%m%r%h\ %w\ \ 
set statusline+=\ \ \ [%{&ff}/%Y] 
set statusline+=\ \ \ %<%20.30(%{hostname()}:%{CurDir()}%)\ 
set statusline+=%=%-10.(%l,%c%V%)\ %p%%/%L

function! CurDir()
    let curdir = substitute(getcwd(), $HOME, "~", "")
    return curdir
endfunction

function! HasPaste()
    if &paste
        return '[PASTE]'
    else
        return ''
    endif
endfunction


