#!/bin/sh
paru -Slq | fzf -m --height 60% --reverse --border --multi --preview 'cat <(paru -Si {1}) <(paru -Fl {1} | awk "{print \$2}")' | xargs -ro  paru -S
