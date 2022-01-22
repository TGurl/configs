#!/bin/bash
pacman -Slq | fzf -m --height 60% --reverse --border --multi --preview 'bat <(pacman -Si {1}) <(pacman -Fl {1} | awk "{print \$2}")' | xargs -ro doas pacman -Syu

