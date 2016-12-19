vim-epage
=========

VIM defaults for myself

## Installation

Recommendation: Use [pathogen.vim](https://github.com/tpope/vim-pathogen). It
makes life easy. I was a doubter but now I believe.

Once pathogen is setup, simply run these commands:

```
mkdir -p ~/.vim/bundle
cd ~/.vim/bundle

## Configuration
# Basic defaults
git clone git://github.com/tpope/vim-sensible.git
# Environment-specific settings
git clone git://github.com/epage/vim-nati.git
# Personal settings
git clone git://github.com/epage/vim-epage.git

## Cosmetic
# My current color scheme (Using github.com/flazz/vim-colorschemes.git may significantly slows down vim startup)
git clone git://github.com/w0ng/vim-hybrid.git
# Marks lines in the gutter that are different than HEAD
git clone git://github.com/mhinz/vim-signify.git
# When searching, reports "At match #N out of M matches" in status line
git clone git://github.com/henrik/vim-indexed-search.git
# Shows open buffers in command bar
git clone git://github.com/bling/vim-bufferline
# Static analysis for Python (easier setup than github.com/scrooloose/syntastic.git)
git clone git://github.com/kevinw/pyflakes-vim.git
# Show indent levels
git clone git://github.com/nathanaelkane/vim-indent-guides.git
# Expose the evil of trailing whitespace
git clone https://github.com/ntpeters/vim-better-whitespace.git
# Make matching, nested parentheses stand out
git clone https://github.com/kien/rainbow_parentheses.vim.git

## Features
# rust support
git clone --depth=1 https://github.com/rust-lang/rust.vim.git
# mako support
git clone https://github.com/sophacles/vim-bundle-mako
# Fuzzy file open like in Sublime (Ctrl-p)
git clone git://github.com/ctrlpvim/ctrlp.vim.git
# Visual interfaec to VIMs undo tree
git clone https://github.com/mbbill/undotree/
# File browser enhancements
git clone git://github.com/tpope/vim-vinegar.git
# Alternate between header and source
git clone git://github.com/vim-scripts/a.vim.git
# Sidebar to display tags in open buffers (Windows improvements over github.com/vim-scripts/taglist.vim.git)
git clone https://github.com/majutsushi/tagbar.git
# Unified approach to movements
git clone git://github.com/gcmt/wildfire.vim
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
