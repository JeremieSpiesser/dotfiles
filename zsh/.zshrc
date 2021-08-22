export DISPLAY=$(route.exe print | grep 0.0.0.0 | head -1 | awk '{print $4}'):0.0
export LIBGL_ALWAYS_INDIRECT=1

alias ssh="TERM=xterm ssh -o SendEnv=TERM"
alias vim="nvim"
export ZSH="/home/user/.oh-my-zsh"
alias yt="ytfzf -t"
ZSH_THEME="ys"
alias thunar="pcmanfm"

# .compile/paleofetch/paleofetch

alias tls="tmux ls"
alias tk="tmux kill-session -t"
alias ta="tmux attach -t"
alias tn="tmux new -s"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="false"
HYPHEN_INSENSITIVE="true"
DISABLE_AUTO_UPDATE="true"

#
#     _________  _   _ ____   ____
#    |__  / ___|| | | |  _ \ / ___|
#      / /\___ \| |_| | |_) | |
#   _ / /_ ___) |  _  |  _ <| |___
#  (_)____|____/|_| |_|_| \_\\____|


#neofetch --disable Packages
#{{{ Environnement Variables
# Path to your oh-my-zsh installation.
# User configuration


source $ZSH/oh-my-zsh.sh

export EDITOR=vim
export BROWSER='chromium --incognito'
#export LANG=de_DE.UTF-8
export LANG=fr_FR.UTF-8
export PATH=$HOME/.scripts:$HOME/.local/bin:/usr/local/bin:$PATH

#for i in $(find ~/.scripts -type d) ; do
#	PATH="$PATH:$i"
#done

#export TERM=xterm-254color

plugins=(git z wd zsh-syntax-highlighting docker sublime adb timer)

#. ~/.config/z.sh
#}}} 
###{{{ Enabling Vim mode
# enable vim mode on commmand line
#bindkey -v

## no delay entering normal mode
# https://coderwall.com/p/h63etq
## https://github.com/pda/dotzsh/blob/master/keyboard.zsh#L10
# 10ms for key sequences
# KEYTIMEOUT=1

# show vim status
# http://zshwiki.org/home/examples/zlewidgets
# function zle-line-init zle-keymap-select {
#     RPS1="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
#     RPS2=$RPS1
#     zle reset-prompt
# }
# zle -N zle-line-init
# zle -N zle-keymap-select

# add missing vim hotkeys
# http://zshwiki.org/home/zle/vi-mode
# bindkey -a u undo
# bindkey -a '^T' redo
# bindkey '^?' backward-delete-char  #backspace

# history search in vim mode
# http://zshwiki.org./home/zle/bindkeys#why_isn_t_control-r_working_anymore
# ctrl+r to search history
# bindkey -M viins '^r' history-incremental-search-backward
# bindkey -M vicmd '^r' history-incremental-search-backward


#}}}
#           _    _ _
#          / \  | (_) __ _ ___
#         / _ \ | | |/ _` / __|
#        / ___ \| | | (_| \__ \
#       /_/   \_\_|_|\__,_|___/
#
#{{{ Package management 

alias s='apt search'
alias i='sudo apt install'
alias yolo='sudo apt update && sudo apt upgrade'
alias r='sudo apt remove'
alias whatprovide='sudo pacman -Qo'

alias yi='yay -S'
alias y='yay'
alias ys='yay -Ss'
alias yr='yay -R'
alias yyolo='yay -Syu'


#}}}
#{{{ Filesystem


alias c='clear'
alias cs='cd ..'
alias la='ls -a'
alias lah='ls -ha'
alias sl='ls'
alias sa='systemd-analyze'
alias sab='systemd-analyze blame'

alias uu='!!'

d () {/usr/bin/cd $1 && ls}

#}}}
#{{{ Add default arguments for cli apps and creating apps 

alias acpi='acpi -i -b'
alias rr='ranger'
alias ss='systemctl suspend'
alias rm='trash'
alias rrm='rm'
alias youtube-mp3='youtube-dl --extract-audio --audio-format mp3'
alias sl='ls'
alias docker='sudo docker'
#alias neofetch='neofetch --disable Packages'
alias smb-enable='sudo systemctl stop firewalld && sudo systemctl start smb'
alias smb-disable='sudo systemctl start firewalld && sudo systemctl stop smb'


#}}}
#{{{ Config files


alias {zshconf,ez,eZ}='vim ~/.zshrc'
alias OC='cd ~/caml/ && ls'
alias {i3conf,e3}='vim ~/.config/i3/config'
alias {bspwmconf,eb}='vim ~/.config/bspwm/bspwmrc'
alias {sxhkdconf,ex}='vim ~/.config/sxhkd/sxhkdrc'
alias {vimconf,ev,eV}='vim ~/.vimrc'
alias {rangerconf,er,eR}='vim ~/.config/ranger/rc.conf'
alias {i3blocksconf,e3b,e3B}='vim ~/.config/i3/i3blocks.conf'
alias {xorgconf,eX}='sudo vim /etc/X11/xorg.conf'
alias ea='vim ~/.config/awesome/rc.lua'
alias eat='vim ~/.config/awesome/themes/jimmy/theme.lua'

alias ec='vim $(find ~/.config -type f |fzf)'
alias vw='vim ~/Obsidian/Self\ Improvement/🏡Home.md'

#}}}
#{{{ Config folders


#alias {i3dir,d3}='cd ~/.config/i3/'
#alias {scriptdir,ds}='cd ~/.scripts'
#alias {vimdir,dv,dV}='cd ~/.vim'
#alias {rangerdir,dr,dR}='cd ~/.config/ranger'
#alias {mpvdir,dm,dM}='cd ~/.config/mpv'
#alias {i3blocksconf,e3b,e3B}='vim ~/.config/i3/i3blocks.conf'
#alias {xorgdir,dx,dX}='cd /etc/X11/'
#alias {tf2dir,dtf2}='cd ~/.steam/steam/steamapps/common/Team\ Fortress\ 2'

#}}}
#{{{ Apps / Scripts

#alias r='ranger'
alias p='python3'
alias pi='ipython -i'
alias sctl='systemctl'
alias sctls='systemctl status'
alias pls='sudo'
alier () {echo "$1" >> ~/.zshrc}
alias sz='source /home/user/.zshrc'
alias compresser-image-90='time convert -quality 90%'
alias site-vacuum='time wget -r -k -np --user-agent=Firefox'
alias wgetff='wget --user-agent="Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0"'
function cc {
        ocaml $1
        
}
#alias nb='sudo cp ~/.config/gsd/hosts_play /etc/hosts ; newsboat ;sudo cp ~/.config/gsd/hosts_work /etc/hosts'
#alias nb='newsboat'
alias gsdp='sudo cp ~/.config/gsd/hosts_play /etc/hosts'
alias gsdw='sudo cp ~/.config/gsd/hosts_work /etc/hosts'

alias es='vim $(find ~/.scripts -type f || exit 0|fzf)'
alias rs='bash $(find ~/.scripts -type f || exit 0|fzf)'

function sv {
    case $1 in
        "r")
            sudo systemctl restart $2;;
        "s")
            sudo systemctl status $2;;
        "u")
            sudo systemctl start $2;;
        "d")
            sudo systemctl stop $2;;
    esac
}



alias wf='sudo modprobe -r iwldvm && sudo modprobe -r iwlwifi && sudo modprobe iwlwifi'

#}}}

wd() {
  . /home/user/bin/wd/wd.sh
}

lfcd () {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp" >/dev/null
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}
bindkey -s '^o' 'lfcd\n'

cdfzf(){
    output=$(fzf --height 30% --reverse  -i < /home/user/.zsh_marks|| exit 0)
    fname=$(echo "$output")
    #fname=$(echo "$output"|cut -d':' -f2|sed -e 's/^\s*//g')
    cd "$fname"
    ls
}
bindkey -s '^u' 'cdfzf\n'

bindkey -s '^z' 'fg >/dev/null 2>&1\n'

markCd(){
    echo "$(pwd)" >> ~/.zsh_marks
}

vimfzf(){
    output=$(fzf --height 30% --reverse -i < /home/user/.zsh_vims|| exit 0)
    fname=$(echo "$output")
    #fname=$(echo "$output"|cut -d':' -f2|sed -e 's/^\s*//g')
    vim "$fname"
}
bindkey -s '^y' 'cdfzf\n'

bindkey -s '^h' '!!^I\n'
markVims(){
    echo "$(pwd)" >> ~/.zsh_vims
}

cht(){
    curl cheat.sh/"$*"
}

alias gpa='git add * && git commit -m "gpa commit" && git push'
#[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# [[ $(date +"%H") -lt 17 ]] && cd ~/nokia/proto2

alias x='LIBVA_DRIVER_NAME=i965 startx'


if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi


man() {
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    command man "$@"
}
