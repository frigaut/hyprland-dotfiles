#! /bin/sh

sleep 10

hyprctl keyword windowrule "workspace unset,kitty"
hyprctl keyword windowrule "workspace unset,Subl"
hyprctl keyword windowrule "workspace unset,Code"
hyprctl keyword windowrule "workspace unset,Logseq"
hyprctl keyword windowrule "workspace unset,Slack"
hyprctl keyword windowrule "workspace unset,Mailspring"
hyprctl keyword windowrule "workspace unset,firefox"
hyprctl keyword windowrule "workspace unset,discord"

exec $HOME/bin/hyprland_setup_dual_monitors.sh
