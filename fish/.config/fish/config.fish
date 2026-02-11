if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting 

### ALIASES ###
# navigation
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# vim and other apps
alias vim='nvim'
alias emacs="emacsclient -c -a 'emacs'"
alias cls='clear'
alias nv.='nvim .'
alias x='exit'
alias cat='bat -p'
alias del='rm -rf'
alias htop='btop'
alias tmux='tmux -u'
alias f='lf'
alias find='fd'
alias grep='rg' # colorize output (good for log files)

# Changing "ls" to "eza"
alias ls='eza --icons=always --color=always --group-directories-last ' # my preferred listing
alias la='eza -a --icons=always --color=always --group-directories-last'  # all files and dirs
alias ll='eza -l --icons=always --color=always --group-directories-last'  # long format
alias lla='eza -al --icons=always --color=always --group-directories-last'  # long format
alias lt='eza --tree --icons=always --color=always --group-directories-last' # tree listing

# adding flags
alias df='df -h'               # human-readable sizes
alias free='free -m'           # show sizes in MB

# ps
alias psa="ps auxf"
alias psgrep="ps aux | grep -v grep | grep -i -e VSZ -e"
alias psmem='ps auxf | sort -nr -k 4'
alias pscpu='ps auxf | sort -nr -k 3'

# Merge cleanup of shell hist
alias fishclsh="rm -rf ~/.local/share/fish/fish_history;echo 'done the clean up exit and relogin'";
alias srcf="source ~/.config/fish/config.fish;echo 'sourcing of fish shell is done'"

# git
alias addup='git add -u'
alias addall='git add .'
alias branch='git branch'
alias checkout='git checkout'
alias clone='git clone'
alias commit='git commit -m'
alias fetch='git fetch'
alias pull='git pull origin'
alias push='git push origin'
alias tag='git tag'
alias newtag='git tag -a'

# get error messages from journalctl
alias jctl="journalctl -p 3 -xb"

# gpg encryption
# verify signature for isos
alias gpg-check="gpg2 --keyserver-options auto-key-retrieve --verify"
# receive the key of a developer
alias gpg-retrieve="gpg2 --keyserver-options auto-key-retrieve --receive-keys"

# change your default USER shell
alias tobash="sudo chsh $USER -s /bin/bash && echo 'Log out and log back in for change to take effect.'"
alias tofish="sudo chsh $USER -s /bin/fish && echo 'Log out and log back in for change to take effect.'"

### SETTING THE STARSHIP PROMPT ###
if command -q starship
    starship init fish | source
end

### SETTING THE STARSHIP PROMPT FOR FZF ###
if command -q fzf
    fzf --fish | source
end

### JAVM INIT ###
if command -q javm
    javm init fish | source
end
