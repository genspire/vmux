#!/bin/bash

# Run from source directory

# Add configs
if [[ "$(cat bashrc)" != "$(tail -n3 ~/.bashrc)" ]] ; then 
  cat bashrc >> ~/.bashrc
fi
cp tm.sh ~/bin/tm
chmod u+x ~/bin/tm
cp tmux.conf ~/.tmux.conf
cp vimrc ~/.vimrc

# Pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Plugins
cd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/ctrlpvim/ctrlp.vim.git
git clone git://github.com/tpope/vim-fugitive.git
git clone https://github.com/scrooloose/syntastic.git
git clone https://github.com/derekwyatt/vim-scala.git
git clone git://github.com/jpalardy/vim-slime.git

# Themes
git clone https://github.com/sickill/vim-monokai.git
git clone https://github.com/bling/vim-airline



