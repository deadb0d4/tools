set -e -x

# clone Vundle package manager
git clone --depth=1 https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

cp ./vim/.vimrc ~/.vimrc

# install needed plugins
vim -E -c PluginInstall -c qa! > /dev/null
