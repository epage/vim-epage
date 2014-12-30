vim-epage
=========

VIM defaults for myself

## Installation

Recommendation: Use [pathogen.vim](https://github.com/tpope/vim-pathogen). It
makes life easy. I was a doubter but now believe in it.

Once pathogen is setup, simply run these commands:

```
git clone git://github.com/tpope/vim-vinegar.git ~/.vim/bundle/vim-vinegar
git clone git://github.com/sjl/gundo.vim.git ~/.vim/bundle/gundo
git clone https://github.com/bling/vim-bufferline ~/.vim/bundle/vim-bufferline
git clone git://github.com/vim-scripts/a.vim.git ~/.vim/bundle/a.vim
git clone git://github.com/epage/taglist.vim.git ~/.vim/bundle/taglist.vim # Has some improvements for windows
# git clone git://github.com/vim-scripts/taglist.vim.git ~/.vim/bundle/taglist.vim
git clone git://github.com/henrik/vim-indexed-search.git ~/.vim/bundle/vim-indexed-search
git clone git://github.com/kien/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim
git clone git://github.com/kevinw/pyflakes-vim.git  ~/.vim/bundle/pyflakes-vim # Easier setup than syntastic
git clone git://github.com/fisadev/vim-isort.git ~/.vim/bundle/vim-isort
# git clone git://github.com/scrooloose/syntastic.git  ~/.vim/bundle/syntastic
git clone git://github.com/flazz/vim-colorschemes.git ~/.vim/bundle/vim-colorschemes
git clone git://github.com/nathanaelkane/vim-indent-guides.git ~/.vim/bundle/vim-indent-guides
git clone git://github.com/tpope/vim-sensible.git ~/.vim/bundle/vim-sensible
git clone git://github.com/mhinz/vim-signify.git ~/.vim/bundle/vim-signify
git clone git://github.com/epage/vim-nati.git ~/.vim/bundle/vim-nati # Optional
git clone git://github.com/epage/vim-epage.git ~/.vim/bundle/vim-epage
```

What remains in my .vimrc

```
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

set nocompatible

" Files and backups
"Turn backup off
set nobackup
set nowb
set noswapfile

if has('win32') || has ('win64')
    let $VIMHOME = $HOME."/vimfiles"
else
    let $VIMHOME = $HOME."/.vim"
endif

:au BufNewFile *.cpp r $VIMHOME/templates/template.cpp
:au BufNewFile *.ipp r $VIMHOME/templates/template.ipp
:au BufNewFile *.h r $VIMHOME/templates/template.h
:au BufNewFile *.html r $VIMHOME/templates/template.html
:au BufNewFile *.py r $VIMHOME/templates/template.py
:au BufNewFile *.qml r $VIMHOME/templates/template.qml

execute pathogen#infect()
```

For Windows users: [vim-launcher](https://github.com/ThiefMaster/vim-launcher)
