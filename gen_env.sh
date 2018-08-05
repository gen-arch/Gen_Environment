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
eval mkdir ~/.vim/colors
eval wget https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim -a ~/.vim/colors/molokai.vim


echo "\033[33;5m ----[peco clone]---- \033[m"
eval mkdir ~/bin
eval wget https://github.com/peco/peco/releases/download/v0.5.3/peco_linux_amd64.tar.gz && tar xzvf ./peco_* && rm ./peco_*.gz
eval mv ./peco_*/peco ~/bin/ && rm -rf ./peco_*


