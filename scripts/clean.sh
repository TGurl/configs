#!/bin/sh

echo "## Shredding Cache And Junk ##"
rm -rf ~/.cache/* 
paccache -r 
paccache -rk1 
paccache -ruk0 
pacman -Sc --noconfirm 
journalctl --vacuum-size=5M 
pacman -Scc --confirm 
paru -Sc --noconfirm 
paru -Scc --confirm 
rm -rf ~/.local/share/Trash/* 
echo "## Cleaning Memory Cache ##"
sh -c "sync; echo 1 > /proc/sys/vm/drop_caches"
echo "#### Finished!! All Tasks Completed Successfully:) ####"
