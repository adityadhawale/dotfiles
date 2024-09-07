#!/bin/zsh

# Download neovim from here and install it
# https://github.com/neovim/neovim/blob/master/INSTALL.md

# Install Rust

# Install Neovim dotfile related deps
curl -L -R -O https://www.lua.org/ftp/lua-5.4.7.tar.gz
tar zxf lua-5.4.7.tar.gz
cd lua-5.4.7
make all test

# Install packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# Install copilot
git clone https://github.com/github/copilot.vim.git \
  ~/.config/nvim/pack/github/start/copilot.vim

# installs nvm (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | zsh

# download and install Node.js (you may need to restart the terminal)
nvm install 20

source ~/.zshrc

# verifies the right Node.js version is in the environment
node -v # should print `v20.17.0`

# verifies the right npm version is in the environment
npm -v # should print `10.8.2`

# Install rustup and cargo
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source ~/.zshrc

# Install stylua
cargo install stylua

if [[ "$(uname)" == "Darwin" ]]; then
    brew install ripgrep
elif [[ "$(uname)" == "Linux" ]]; then
    sudo apt install ripgrep
fi
