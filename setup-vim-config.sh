#!/bin/sh

echo "Starting setup of Vim-Settings..."
echo "Creating settings directory..."
NVIM_HOME="~/.config/nvim"
mkdir -p $NVIM_HOME
cd $NVIM_HOME
echo "Cloning LoreleiPenn/Vim-Settings..."
git clone git@github.com:LoreleiPenn/Vim-Settings.git
echo "Making hardlinks for Vim files..."
VIM_FILES=('vimrc', 'vimrc.local', 'vimrc.local.bundles')
for file in VIM_FILES; do
    ln file ~/.${file}
done
echo "Done."
