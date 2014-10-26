#!/bin/sh

cp -f _vimrc ~/.vimrc
mkdir -p ~/.vim/plugin

cp echofunc.vim  ~/.vim/plugin/
# ctags must be installed
cp -f -R OmniCppComplete/* ~/.vim/
cp -f -R Pydiction/* ~/.vim/

# libclang-dev muse be installed
cd clang_complete && make install
