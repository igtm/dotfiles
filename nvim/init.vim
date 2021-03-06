let s:config_home = empty($XDG_CONFIG_HOME) ? expand('~/.config') : $XDG_CONFIG_HOME
let s:dein_dir = s:config_home . '/nvim'
let g:python3_host_prog = expand('~/.pyenv/shims/python')

runtime! /base/*.vim
runtime! /plugins/*.vim

if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#load_toml(s:dein_dir . '/eager.toml', {'lazy': 0})
  call dein#load_toml(s:dein_dir . '/lazy.toml', {'lazy': 1})

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  if has('nvim')
    call dein#load_toml(s:dein_dir . '/neovim_eager.toml', {'lazy' : 0})
    call dein#load_toml(s:dein_dir . '/neovim_lazy.toml', {'lazy' : 1})
  endif

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable
