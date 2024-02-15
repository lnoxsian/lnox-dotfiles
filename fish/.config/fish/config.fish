set fish_greeting
if status is-interactive
    # Commands to run in interactive sessions can go here
end
function fish_user_key_bindings
    fish_vi_key_bindings
end

# some more cd aliases
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# some usefull shortcuts
alias cls=clear
alias del='rm -rf'
alias x=exit

# some apps aliases
alias nv.='nvim .'
alias f=lf # use the respective cmdline explorer
alias ls=lsd # use for the respective cmdline alt for ls eg: lsd,exa
alias tmux='tmux -u'

# alias for ls commands
alias la='ls -a'
alias ll='ls -al'
alias lt='ls --tree'
alias lta='ls -a --tree'

# system and cleanup aliases
alias xpow='sudo poweroff'
alias xrpow='sudo reboot'
alias xspow='sudo systemctl suspend'
alias srcf='source ~/.config/fish/config.fish;echo done sourcing config.fish'
alias delfh='rm -rf ~/.local/share/fish/fish_history;echo done deleting fish_history'

# some more git commands
alias gclone='git clone'
alias ginit='git init'
alias gadd.='git add .'
alias gchangeb="git branch -m"
alias gcommit='git commit -m'
