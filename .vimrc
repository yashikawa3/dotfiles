" 互換性モードをオフにして Vim の全機能を活用
set nocompatible

" Vim の内部エンコーディングを UTF-8 に設定
set encoding=utf-8

" filetype 機能を一時的にオフにする
filetype off

" 言語メニューの設定
set langmenu=en_US.UTF-8

" バックスペースの挙動を設定
set backspace=indent,eol,start

" 使用する言語を英語 (US) に設定
language en_US.UTF-8

" パッケージのインストール
packadd vim-jetpack
call jetpack#begin()
Jetpack 'tani/vim-jetpack', {'opt': 1} "bootstrap
Jetpack 'dracula/vim', { 'as': 'dracula' }
call jetpack#end()

" filetype 機能を再度有効にする
filetype plugin indent on
