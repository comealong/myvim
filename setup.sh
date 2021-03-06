#!/bin/sh

# git must be installed

cp -f _vimrc ~/.vimrc
mkdir -p ~/.vim/plugin

git clone https://github.com/vim-scripts/echofunc.vim.git
cp -f echofunc.vim/plugin/echofunc.vim  ~/.vim/plugin/

# ctags must be installed
# ctags -R --sort=1 --c++-kinds=+p --fields=+iaS --extra=+q --language-force=C++ .
git clone https://github.com/vim-scripts/OmniCppComplete.git
cp -f -R OmniCppComplete/* ~/.vim/

# install python-epydoc, shift+k to read the doc for python
git clone https://github.com/vim-scripts/Pydiction.git
cp -f -R Pydiction/* ~/.vim/

git clone https://github.com/vim-scripts/taglist.vim.git
cp -f -R taglist.vim/plugin/taglist.vim  ~/.vim/plugin/

# libclang-dev muse be installed
git clone https://github.com/Rip-Rip/clang_complete.git
cd clang_complete && make install

