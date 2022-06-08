#!/bin/zsh

function handle {
  # echo $1
  # if [[ ${1:0:9} == "workspace" ]]; then
  #   notify-send "you are on workspace ${1:${#${1}}-1:1}"
  # fi
  # if [[ ${1:0:9} == "activemon" ]]; then
  #   notify-send "you are on workspace ${1:${#${1}}-1:1}"
  # fi
  if [[ ${1:0:12} == "monitoradded" ]]; then
    # echo "monitoradded";
    # hyprctl dispatch moveworkspacetomonitor "1 1"
    # hyprctl dispatch moveworkspacetomonitor "2 1"
    # hyprctl dispatch moveworkspacetomonitor "4 1"
    # hyprctl dispatch moveworkspacetomonitor "5 1"
    # hyprctl dispatch moveworkspacetomonitor "6 1"
    # hyprctl dispatch moveworkspacetomonitor "3 0"
    # hyprctl dispatch moveworkspacetomonitor "7 0"
    # hyprctl dispatch moveworkspacetomonitor "8 0"
    # hyprctl dispatch moveworkspacetomonitor "9 0"
    # hyprctl dispatch moveworkspacetomonitor "10 0"
    $HOME/bin/hyprland_setup_dual_monitors.sh;
  fi
}

socat - UNIX-CONNECT:/tmp/hypr/.socket2.sock | while read line; do handle $line; done
