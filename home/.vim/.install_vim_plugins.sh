#!/bin/bash
pushd ~/.vim
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
pushd ~/.vim/bundle
git clone https://github.com/tpope/vim-surround.git
git clone https://github.com/tpope/vim-fugitive.git
git clone https://github.com/ctrlpvim/ctrlp.vim.git
git clone https://github.com/vim-airline/vim-airline.git
git clone https://github.com/airblade/vim-gitgutter.git
git clone https://github.com/vim-airline/vim-airline-themes
git clone https://github.com/tpope/vim-sensible.git
git clone https://github.com/tpope/vim-unimpaired.git
git clone https://github.com/will133/vim-dirdiff.git
popd
popd
