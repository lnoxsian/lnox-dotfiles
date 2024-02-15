sudo apt install neovim fish git zip unzip build-essential
sudo chsh -s /usr/bin/fish

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/Hack.zip
mkdir -p Nerdfonts
unzip -d Hack Hack.zip
mv Hack Nerdfonts
sudo mv Nerdfonts /usr/share/fonts/truetype/

curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

cp -r fish/.config/fish ~/.config/
cp -r kitty/.config/kitty ~/.config/
cp -r neovim/.config/nvim ~/.config/
cp -r terminator/.config/terminator ~/.config
cp -r tmux/tmux.conf ~/.tmux.conf
