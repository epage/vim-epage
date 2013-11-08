" epage.vim - Defaults for myself that build in vim-sensible
" Maintainer:   Ed Page
" Version:      1.0

if exists('g:loaded_epage') || &compatible
  finish
else
  let g:loaded_epage = 1
endif

set termencoding=utf-8
set fileencodings=ucs-bom,ascii,utf-8,latin1

"""""""""""""""""""""""""""""""""""""""""""""""
" Appearance
"""""""""""""""""""""""""""""""""""""""""""""""
set nowrap
set lbr " wraps at words instead of at characters
set list
set noerrorbells
set novisualbell

set diffopt+=iwhite,icase

if has("gui_running")
  color zenburn

  set spell
  set number
  set cursorline
  set guioptions-=m "remove menu bar
  set guioptions-=T "remove toolbar
endif

"""""""""""""""""""""""""""""""""""""""""""""""
" Status Line 
"""""""""""""""""""""""""""""""""""""""""""""""
set showcmd  "Show (partial) command in status line.
set wildmode=list:longest
set wildignore=.svn,CVS,.git,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif,*.d

"""""""""""""""""""""""""""""""""""""""""""""""
" Search
"""""""""""""""""""""""""""""""""""""""""""""""
set hls
set showmatch "Show matching brackets.
set smartcase "Do smart case matching
set incsearch "Incremental search

"""""""""""""""""""""""""""""""""""""""""""""""
" Navigation
"""""""""""""""""""""""""""""""""""""""""""""""

nnoremap <Space> :

" Switch between header and source file
map <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>

" Home key alternates between begin of line and begin of text
function! SmartHome()
  let s:col = col(".")
  normal! ^
  if s:col == col(".")
    normal! 0
  endif
endfunction
nnoremap <silent> <Home> :call SmartHome()<CR>
inoremap <silent> <Home> <C-O>:call SmartHome()<CR>

"""""""""""""""""""""""""""""""""""""""""""""""
" Programming
"""""""""""""""""""""""""""""""""""""""""""""""

syntax on
filetype plugin on
filetype indent on

highlight EvilSpace ctermbg=darkred guibg=darkred
au Syntax * syn match EvilSpace /\(^\t*\)\@<!\t\+/ " tabs not preceeded by tabs
au Syntax * syn match EvilSpace /[ \t]\+$/ " trailing space

autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``

" make Python syntax highlighting highlight more things
let python_highlight_numbers = 1
let python_highlight_builtins = 1
" PyEv - Will evaluate the current line
let python_highlight_exceptions = 1
