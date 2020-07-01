function pacman-rank-mirrorlist
sudo reflector -c 'United States' -f 10 --sort rate -p rsync -p https --save /etc/pacman.d/mirrorlist
end
