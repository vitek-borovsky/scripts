#!/usr/bin/env bash

#~/scripts/.source/source.sh

~/scripts/.source/trollface.sh
source ~/scripts/.source/wal.sh
source ~/scripts/.source/lf_icons.sh
source ~/scripts/.source/alias.sh

# Set cmd line to vim mode
set -o vi

export PATH="${PATH}:/home/vitek/scripts"
export XDG_RUNTIME_DIR="/run/user/$(id -u)"


# start hyprland if we are on tty1 [on_login]
if [[ -z "$DISPLAY" ]] && [[ $(tty) = /dev/tty1 ]]; then
    Hyprland
fi

__fzf_history__() {
  local selected=$(HISTTIMEFORMAT= history | fzf --tac --height 50% --min-height 20 --border --ansi --reverse | sed 's/^[ 0-9]\+ *//')
  READLINE_LINE="${selected}${READLINE_LINE}"
  READLINE_POINT=${#READLINE_LINE}
}
bind -x '"\C-r": __fzf_history__'

bind '"\C-l":clear-screen'

