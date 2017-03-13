# Dotfiles
This repo contains some of my dotfiles, tested on Ubuntu 15.10
### 1) gitconfig
##### Dependencies - kdiff3
For installing kdiff3 refer this link. (http://opensourceforgeeks.blogspot.in/2014/07/how-to-install-kdiff3-on-ubuntu.html)
After installing kdiff3 you can directly copy this gitconfig file in your ~/.gitconfig
#### Details
I've used Sublime Text as the core editor for writing commit messages. Also credentials of Github will be saved for 60 minutes so you would not have to enter them every time. kdiff3 is used as mergetool for solving merge conflicts, and for seeing diff. Few aliases also have been added.
### 2) makemysymlinks.sh
Shell Script for creating symlinks of the files present in dotfiles directory in home directory.
### 3) vimrc
All the plugins are present in vim folder. For configuring your vimrc refer this. (http://learnvimscriptthehardway.stevelosh.com/)
### 4) bashrc
##### Dependencies - powerline-shell
For installing powerline-shell refer these links. (http://www.linuxdeveloper.space/install-vim-powerline/), (http://www.tecmint.com/powerline-adds-powerful-statuslines-and-prompts-to-vim-and-bash/).
After that you can directly copy this bashrc file in your ~/.bashrc.
### Tutorial on how to manage your dotfiles.
(http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/).
