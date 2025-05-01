#!/usr/bin/env bash

alias nv='nvim'
alias rebuild='home-manager switch --flake ~/mysystem/home-manager/#vitek --impure'
alias sys-rebuild="sudo nixos-rebuild switch --flake /home/vitek/mysystem/system/#myNixos --impure"
alias :q="exit"
alias t="tmux"
alias shutdown="shutdown now"
alias ..="cd .."
alias ...="cd ../.."
alias wttr="curl wttr.in/Libus"
alias cal="cal --monday"
alias ta="t a"
alias mv="mv -i" # prompt before override
alias sread="wl-paste | speedread -w 400"
alias g="git"

alias k="kubectl"
alias kn='kubectl config set-context --current --namespace'
alias kbusy='kubectl run debug --rm -it --image=busybox --restart=Never -- /bin/sh'
alias kalpine='kubectl run debug --rm -it --image=alpine --restart=Never -- /bin/sh'
alias h="helm"

alias nvh="nvim ~/.config/home-manager/home.nix"
alias nvs="nvim ~/mysystem/system/nixos/configuration.nix"

alias echo="echo -e"
