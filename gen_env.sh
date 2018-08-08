#!/bin/sh
CONF_URL="https://github.com/genchan-takotan/config"

echo "\033[33;5m ----[config clone]---- \033[m"
git clone $CONF_URL ~/config
mv ~/config/.*rc ~/
rm -rf ~/config
echo " \033[35;5m succsess!! \033[m"

echo "\033[32;5m rbenv create ===================================  \033[m"
if [ ! -e ~/.rbenv ]; then
    echo "\033[33;5m ----[rbenv clone]---- \033[m"
    git clone https://github.com/rbenv/rbenv.git ~/.rbenv
    git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
    echo " \033[35;5m succsess!! \033[m"
else
    echo " \033[31;5m Already created rbenv!! \033[m"
fi

echo "\033[32;5m pyenv create ===================================  \033[m"
if [ ! -e ~/.pyenv ]; then
    echo "\033[33;5m ----[pyenv clone]---- \033[m"
    git clone git://github.com/yyuu/pyenv.git ~/.pyenv
    echo " \033[35;5m succsess!! \033[m"
else
    echo " \033[31;5m Already created pyenv!! \033[m"
fi

echo "\033[32;5m vim create ===================================  \033[m"
if [ ! -e ~/.vim ]; then
    echo "\033[33;5m ----[vim clone]---- \033[m"
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    mkdir ~/.vim/colors
    wget https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim -a ~/.vim/colors/molokai.vim
    echo " \033[35;5m succsess!! \033[m"
else
    echo " \033[31;5m Already created vim!! \033[m"
fi

echo "\033[32;5m peco create ===================================  \033[m"
if [ ! -e ~/bin/peco ]; then
    echo "\033[33;5m ----[peco clone]---- \033[m"
    mkdir $dir
    wget https://github.com/peco/peco/releases/download/v0.5.3/peco_linux_amd64.tar.gz && tar xzvf ./peco_* && rm ./peco_*.gz
    mv ./peco_*/peco ~/bin/ && rm -rf ./peco_*
    echo " \033[35;5m succsess!! \033[m"
else
    echo " \033[31;5m Already created peco!! \033[m"
fi
