# install some apps
install_apps() {
    echo 'installing some apps:: tmux, git, build-essential, curl, cmake, python3, python3-[pip,dev,setuptools]'
    sudo apt install tmux git build-essential cmake python3 python3-pip python3-venv python3-dev python3-setuptools curl -y
    echo 'done installing apps'
}

install_and_setup_ppa_apps() {
    sudo add-apt-repository ppa:gnome-terminator/ppa -y && sudo apt update -y
    sudo add-apt-repository ppa:fish-shell/release-4 -y && sudo apt update -y
    sudo add-apt-repository ppa:agornostal/ulauncher -y && sudo apt update -y
    sudo apt install ulauncher terminator fish -y
}

install_tpm() {
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
}

install_fisher() {
    curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
}

copy_config_neovim() {
    read -r -p "Copy the neovim config .config/nvim ? [y/N] " response
    case "$response" in
        [yY][eE][sS]|[yY]) 
            cp -r neovim/.config/nvim ~/.config/
            ;;
        *)
            echo 'skipping the copy procedure'
            ;;
    esac
}

copy_config_terminator() {
    read -r -p "Copy the terminator config .config/terminator ? [y/N] " response
    case "$response" in
        [yY][eE][sS]|[yY]) 
            cp -r terminator/.config/terminator ~/.config/
            ;;
        *)
            echo 'skipping the copy procedure'
            ;;
    esac
}

copy_config_tmux() {
    read -r -p "Copy the tmux config .config/tmux ? [y/N] " response
    case "$response" in
        [yY][eE][sS]|[yY]) 
            cp -r tmux/.config/tmux ~/.config/
            ;;
        *)
            echo 'skipping the copy procedure'
            ;;
    esac
}

copy_config_fish() {
    read -r -p "Copy the fish config .config/fish ? [y/N] " response
    case "$response" in
        [yY][eE][sS]|[yY]) 
            cp -r fish/.config/fish ~/.config/
            ;;
        *)
            echo 'skipping the copy procedure'
            ;;
    esac
}

copy_config_ulauncher() {
    read -r -p "Copy the ulauncher config .config/ulauncher ? [y/N] " response
    case "$response" in
        [yY][eE][sS]|[yY]) 
            cp -r ulauncher/.config/ulauncher ~/.config/
            ;;
        *)
            echo 'skipping the copy procedure'
            ;;
    esac
}

install_apps

install_and_setup_ppa_apps

install_tpm

install_fisher

copy_config_neovim

copy_config_terminator

copy_config_tmux

copy_config_fish

copy_config_ulauncher
