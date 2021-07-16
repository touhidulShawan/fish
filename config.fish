#----------------------------
#______ _____  _____ _    _
# |  ____|_   _|/ ____| |  | |
# | |__    | | | (___ | |__| |
# |  __|   | |  \___ \|  __  |
# | |     _| |_ ____) | |  | |
# |_|    |_____|_____/|_|  |_|
# -----------------------------

# Export
set fish_greeting
set --export EDITOR nvim
set --export GIT_EDITOR nvim

# set default node version
set --universal nvm_default_version v16.4.2

# Created by `pipx` on 2021-06-24 11:46:10
set PATH $PATH /home/shawan/.local/bin

### Abbreviations (expanded aliases)
abbr c 'code .'
abbr bm 'bashmount'
abbr al 'alsamixer'
abbr r 'ranger'
abbr e 'exit'
abbr cl 'clear'
abbr bp 'bpytop'
abbr n 'nvim .'
abbr berry 'yarn set version berry'
abbr gpkg 'npm install -g eslint typescript nodemon prettier neovim yarn'

# alias for wifi on/OFF
alias start_wifi='nmcli radio wifi on'
alias stop_wifi='nmcli radio wifi off'

# alias to change wallpaper randomly from folders
alias w='nitrogen --set-zoom-fill --random ~/Pictures/Anime3'
alias w2='nitrogen --set-zoom-fill --random ~/Pictures/Anime2'
alias w3='nitrogen --set-zoom-fill --random ~/Pictures/Anime-Old'
alias w4='nitrogen --set-zoom-fill --random ~/Pictures/wallpaper'
alias w5='nitrogen --set-zoom-fill --random ~/Pictures/wallpapers'


# navigation
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../..'
alias .5='cd ../../../..'
alias .6='cd ../../../../..'

# navigations of home folders
alias desktop="cd ~/Desktop"
alias downloads="cd ~/Downloads"
alias learn="cd ~/Learn"
alias pictures="cd ~/Pictures"
alias react="cd ~/React"
alias repo="cd ~/Repository"
alias temp="cd ~/Temp"
alias workspace="cd ~/Workspace"

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# alias for my exa command replace for ls
alias la='exa -al --icons --sort=name --color=always --group-directories-first'
alias ls='exa -a --icons --sort=name --group-directories-first'
alias ll='exa -l --icons --color=always --group-directories-first'
alias lt='exa -aT --icons --color=always --group-directories-first'


## get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'

## get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'

# youtube-dl
alias yta-aac="youtube-dl --extract-audio --audio-format aac"
alias yta-best="youtube-dl --extract-audio --audio-format best"
alias yta-flac="youtube-dl --extract-audio --audio-format flac"
alias yta-m4a="youtube-dl --extract-audio --audio-format m4a"
alias yta-mp3="youtube-dl --extract-audio --audio-format mp3"
alias yta-opus="youtube-dl --extract-audio --audio-format opus"
alias yta-vorbis="youtube-dl --extract-audio --audio-format vorbis"
alias yta-wav="youtube-dl --extract-audio --audio-format wav"
alias ytv-best="youtube-dl -f bestvideo+bestaudio"

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


# alias pacman
alias update='sudo pacman -Syyu'
alias install='sudo pacman -S'
alias search='sudo pacman -Ss'
alias uninstall='sudo pacman -Rns'
alias unlock="sudo rm /var/lib/pacman/db.lck"
alias cleanup='sudo pacman -Rns (pacman -Qtdq)'

#alias for paru
alias psua="paru -Sua --noconfirm"
alias psyu="paru -Syu --noconfirm"

# update mirrorlist using reflector
alias mirror="sudo reflector --verbose --latest 5 --sort rate --protocol https --save /etc/pacman.d/mirrorlist"
alias mirrord="sudo reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist"
alias mirrors="sudo reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist"
alias mirrora="sudo reflector --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist"

starship init fish | source
