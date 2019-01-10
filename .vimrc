
execute pathogen#infect()

let &t_SI="\<Esc>]50;CursorShape=1\x7"
let &t_SR="\<Esc>]50;CursorShape=2\x7"
let &t_EI="\<Esc>]50;CursorShape=2\x7"

cnoreabbrev ag Ag
cnoreabbrev rg Rg
cnoreabbrev files Files
cnoreabbrev tn tabnew

syntax on
autocmd VimEnter * GitGutterEnable
set updatetime=100

set t_Co=256
" set background=dark
" colorscheme PaperColor
autocmd VimEnter * highlight VertSplit ctermbg=NONE ctermfg=NONE
autocmd VimEnter * highlight Normal ctermbg=NONE guibg=NONE
autocmd VimEnter * highlight nonText ctermbg=NONE
autocmd VimEnter * highlight Search cterm=NONE ctermfg=white ctermbg=darkblue
autocmd VimEnter * highlight TabLine ctermfg=NONE ctermbg=NONE
autocmd VimEnter * highlight TabLineFill guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE
autocmd VimEnter * highlight TabLineSel ctermfg=NONE ctermbg=NONE

set fillchars+=vert:\ 
set writebackup
set nobackup
set ruler
set showcmd
set incsearch
set number
set laststatus=2
set smartindent
set autoindent
set mouse=a
set cursorline
autocmd VimEnter * hi Cursorline term=bold cterm=bold ctermbg=23 
autocmd VimEnter * set clipboard=unnamed

nnoremap o o<Esc>
nnoremap O O<Esc>
nnoremap tt <C-w>w

nnoremap <S-w> dw

autocmd VimEnter * let g:NERDTreeWinSize=25
" autocmd VimEnter * NERDTree
" autocmd VimEnter * wincmd r
" autocmd VimEnter * wincmd p

autocmd bufenter * if (winnr("$") == 1 && ((exists("b:NERDTree") && b:NERDTree.isTabTree()) || getwinvar(winnr("$"), "&syntax") == "qf")) | q | endif

let blacklistFiletypes = ['make']
autocmd VimEnter * if index(blacklistFiletypes, &ft) < 0 | set tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd BufWritePost * if @% == 'update.files.sh' || @% == '.vimrc' || @% == '.zshrc' || @% == '.gitconfig' | !~/./update.files.sh

set runtimepath+=~/.vim_runtime
set runtimepath+=/usr/local/opt/fzf

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry

" lightline
set noshowmode
let g:lightline = {
    \ 'colorscheme': 'one',
    \ }
let s:palette = g:lightline#colorscheme#one#palette

let s:palette.normal.middle = [ [ 'NONE', 'NONE', 'NONE', 'NONE' ] ]
let s:palette.inactive.middle = [ [ 'NONE', 'NONE', 'NONE', 'NONE' ] ]

let s:palette.tabline.middle = [ [ 'NONE', 'NONE', 'NONE', 'NONE' ] ]
let s:palette.tabline.left = [ [ 'NONE', 'NONE', 'NONE', 'NONE' ] ]
let s:palette.tabline.right = [ [ 'NONE', 'NONE', 'NONE', 'NONE' ] ]
let s:palette.tabline.tabsel = [ [ '#282c34', '#61afef', 235, 75, 'bold' ] ]
unlet s:palette
