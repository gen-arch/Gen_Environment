#!/bin/sh
CONF_URL="https://github.com/genchan-takotan/config"



echo "\033[33;5m ----[config clone]---- \033[m"
eval git clone $CONF_URL ~/config
eval mv ~/config/.*rc ~/
eval rm -rf ~/config

echo "\033[33;5m ----[rbenv clone]---- \033[m"
eval git clone https://github.com/rbenv/rbenv.git ~/.rbenv
eval git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build


echo "\033[33;5m ----[pyenv clone]---- \033[m"
eval git clone git://github.com/yyuu/pyenv.git ~/.pyenv

echo "\033[33;5m ----[vim clone]---- \033[m"
eval git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
eval git clone https://github.com/tomasr/molokai ~/.vim/

