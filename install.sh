# update os
sudo apt update
sudo apt -y upgrade

# for add-apt-repository
sudo apt install -y software-properties-common

# install tools
sudo apt install -y tree ripgrep fd-find wget


# install latest neovim
sudo apt install -y fuse
wget https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
sudo chmod u+x nvim.appimage
sudo mv nvim.appimage /usr/local/bin/nvim
nvim --version


# install node (for lsp)
curl -fsSL https://deb.nodesource.com/setup_current.x | sudo -E bash -
sudo apt install -y nodejs
npm -v

sudo apt install -y python3.10-venv