install_apps() {
    echo 'installing some apps:: tmux, git, build-essential, curl, cmake, python3, python3-[pip,dev,setuptools]'
    sudo apt install tmux git build-essential cmake python3 python3-pip python3-venv python3-dev python3-setuptools curl -y
    echo 'done installing apps'
}

install_tpm() {
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
}

install_fisher() {
    curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
}

copy_config_neovim() {
    read -r -p "Are you sure? [y/N] " response
    case "$response" in
        [yY][eE][sS]|[yY]) 
            cp -r neovim/.config/nvim ~/.config/
            ;;
        *)
            echo 'not doing anything :)'
            ;;
    esac
}

copy_config_tmux() {
    read -r -p "Are you sure? [y/N] " response
    case "$response" in
        [yY][eE][sS]|[yY]) 
            cp -r fish/.config/fish ~/.config/
            ;;
        *)
            echo 'not doing anything :)'
            ;;
    esac
}

copy_config_terminator() {
    read -r -p "Are you sure? [y/N] " response
    case "$response" in
        [yY][eE][sS]|[yY]) 
            cp -r fish/.config/fish ~/.config/
            ;;
        *)
            echo 'not doing anything :)'
            ;;
    esac
}
