set langmenu=en_US.UTF-8
language en_US.UTF-8

packadd vim-jetpack
call jetpack#begin()
Jetpack 'tani/vim-jetpack', {'opt': 1} "bootstrap
Jetpack 'dracula/vim', { 'as': 'dracula' }
call jetpack#end()
