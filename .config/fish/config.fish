set -x MANPAGER "nvim +Man!"

function fish_greeting
    echo The time is (set_color purple; date +%T; set_color purple)
    if test -z $SSH_CLIENT;
      fastfetch
    else
      neofetch
    end
end

set PATH $PATH /home/pingu/.local/bin /home/pingu/.cargo/bin/

#ENVAR

export EDITOR="nvim"
export YDOTOOL_SOCKET="$HOME/.ydotool_socket"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_MUSIC_DIR="$HOME/Music"
export XDG_PICTURES_DIR="$HOME/Pictures"
export DPREFIX="$HOME/.local/share/mac/.darling"
export GEODE_SDK="/home/pingu/Documents/Geode"

#ENDENVAR

alias icat='kitty +kitten icat --align=left'

alias py="python3"

alias sc="screen -r atm9"
alias start="screen -dmS atm9"

alias grep='rg -p'
alias rg='rg -p'

alias cp='cp -rv'

alias :q='exit'
alias :qa='pkill fish'
alias ..='z ..'
alias .2='z ../..'
alias .3='z ../../..'
alias .4='z ../../../..'
alias .5='z ../../../../..'
alias .r='z /'
alias .h='z ~'
alias .c='z ~/.config/'
alias .a='z ~/.config/ags/'
alias .d='z ~/Documents/'
alias .C='z ~/Documents/code/'
alias .D='z ~/Downloads/'
alias .p='z ~/Pictures/'

# git
alias gc="git clone"
alias gp="git push"
alias ga="git add"
alias gcm="git commit -m"

alias fetch="clear ; fastfetch --logo ~/Downloads/gay.png --logo-width 32"
alias hvim="z ~/.config/hypr/ ; nvim ; z"
alias fvim="nvim ~/.config/fish/config.fish"
alias se="sudoedit"
alias vim="nvim"
alias nvide="env -u WAYLAND_DISPLAY neovide --multigrid"
alias transcat="queercat -b -f 1 -v 0.45 -h 0.45"
alias clock="tty-clock -s -C 5 -D -c -b"
alias ls="eza -l -a --group-directories-first --icons"
alias ilom="ssh -oHostKeyAlgorithms=+ssh-rsa root@192.168.0.201"
alias jdc="procyon-decompiler"
alias scsh="~/.cargo/bin/watershot"
starship init fish | source
zoxide init fish | source
atuin init fish | source

if test -f ~/.cache/ags/user/generated/terminal/sequences.txt
    cat ~/.cache/ags/user/generated/terminal/sequences.txt
end
