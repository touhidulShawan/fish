#-----------------------------
#______ _____  _____ _    _
# |  ____|_   _|/ ____| |  | |
# | |__    | | | (___ | |__| |
# |  __|   | |  \___ \|  __  |
# | |     _| |_ ____) | |  | |
# |_|    |_____|_____/|_|  |_|
# -----------------------------

# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish

# Export
set fish_greeting
set TERM "xterm-256color"
set EDITOR "nvim"
set VISUAL "nvim"

# alias for bashmount
alias bm='bashmount'

#alias for alsamixer
alias al='alsamixer'

# alias for ranger
alias r="ranger"

# alias for wifi on/OFF
alias start_wifi='nmcli radio wifi on'
alias stop_wifi='nmcli radio wifi off'

# navigation
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../..'
alias .5='cd ../../../..'
alias .6='cd ../../../../..'

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# alias for my lsd command replace for ls

#alias ls='lsd -hA --group-dirs first'
#alias l='lsd'
#alias ll='ls -l'
#alias la='ls -a'
#alias lla='ls -la'
#alias lt='ls --tree'

# alias for my exa command replace for ls

alias ls='exa -al --icons --sort=name --color=always --group-directories-first'
alias la='exa -a --icons --sort=name --group-directories-first'
alias ll='exa -l --icons --color=always --group-directories-first'
alias lt='exa -aT --icons --color=always --group-directories-first'
alias l.='exa -a | egrep "^\."'


## get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'

## get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'

# youtube-dl
alias yta-aac="youtube-dl --extract-audio --audio-format aac "
alias yta-best="youtube-dl --extract-audio --audio-format best "
alias yta-flac="youtube-dl --extract-audio --audio-format flac "
alias yta-m4a="youtube-dl --extract-audio --audio-format m4a "
alias yta-mp3="youtube-dl --extract-audio --audio-format mp3 "
alias yta-opus="youtube-dl --extract-audio --audio-format opus "
alias yta-vorbis="youtube-dl --extract-audio --audio-format vorbis "
alias yta-wav="youtube-dl --extract-audio --audio-format wav "
alias ytv-best="youtube-dl -f bestvideo+bestaudio "

# alias for exit
alias e='exit'

#alias for clear
alias c='clear'

#alias for copy
alias cp='cp -r -g -i'
alias mv='mv -i'

# alias for rm
alias del='sudo rm -r'

# alias for reboot and shutdown
alias reboot='systemctl reboot'
alias shutdown='systemctl poweroff'
alias suspend='systemctl suspend'

# [bat as MANPAGER]
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# get error messages from journalctl
alias jctl="journalctl -p 3 -xb"


# alias pacman and yay

# alias for update package
alias update='sudo pacman -Syyu'
# alias to install pacman packages
alias install='sudo pacman -S'
# alias search package
alias search='sudo pacman -Ss'
# alias to uninstall packages
alias uninstall='sudo pacman -Rns'

#alias for yay
#alias yaysua="yay -Sua --noconfirm"              # update only AUR pkgs
#alias yaysyu="yay -Syu --noconfirm"              # update standard pkgs and AUR pkgs

alias unlock="sudo rm /var/lib/pacman/db.lck"    # remove pacman lock
# alias cleanup='sudo pacman -Rns $(pacman -Qtdq)' # remove orphaned packages

# update mirrorlist using reflector
# alias mirror='sudo reflector --latest 10 --protocol https --sort rate --save /etc/pacman.d/mirrorlist'
alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias mirrord="sudo reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist"
alias mirrors="sudo reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist"
alias mirrora="sudo reflector --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist"


starship init fish | source

### RANDOM COLOR SCRIPT ###
colorscript random


# Start X at login
#if status is-login
#    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
#        exec startx -- -keeptty
#    end
#end
