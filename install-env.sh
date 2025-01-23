# install Basics
pacman -S curl git

# install ZSH
pacman -S zsh
echo "installed zsh@$(zsh --version)"
chsh -s "$(which zsh)"

# install ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install vim & neovim
sudo pacman -S vim neovim
echo "installed neovim@$(nvim --version)"

# install asdf
git clone https://aur.archlinux.org/asdf-vm.git && cd asdf-vm && makepkg -si
echo "installed asdf-vm"
echo ". /opt/asdf-vm/asdf.sh" >> ~/.zshrc
. /opt/asdf-vm/asdf.sh
echo "installed asdf@$(asdf --version)"

asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
echo "installed asdf-nodejs"

# install Node.js
asdf install nodejs
echo "installed Node.js $(node --version)"

# install Yarn
asdf plugin-add yarn https://github.com/asdf-vm/asdf-yarn.git
echo "installed asdf-yarn"

# install PYthon stuff
pacman -S pipenv

# remmina RDP client
sudo pacman -S remmina
echo "installed asdf-yarn"

# Language Servers 
sudo pacman -S lua-language-server 
npm install -g typescript-language-server typescript
## https://github.com/antonk52/cssmodules-language-server
npm install -g cssmodules-language-server
sudo pacman -S python-lsp-server

## Install AWS CLI
mkdir -p ~/bin
cd .../bin || exit 1
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

# install Docker
pacman -S docker docker-compose
