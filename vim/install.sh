set -e -x

install_ctags()
{
  # There may be some problems with this (404 error at least).
  apt-get update && apt-get --fix-missing -y install \
      gcc make \
      pkg-config autoconf automake \
      python3-docutils \
      libseccomp-dev \
      libjansson-dev \
      libyaml-dev \
      libxml2-dev
  
  git clone https://github.com/universal-ctags/ctags ~/ctags
  cd ~/ctags
  
  ./autogen.sh
  ./configure
  make
  make install
  
  cd ../
}

while true; do
    read -p "Do you wish to install ctags [y/n]? " yn
    case $yn in
      [Yy]* ) install_ctags; break;;
      [Nn]* ) break;;
      * ) echo "Please answer [y]es or [n]o...";;
    esac
done

# clone Vundle package manager
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

cp ./vim/.vimrc ~/.vimrc

# install needed plugins
vim -E -c PluginInstall -c qa! > /dev/null
