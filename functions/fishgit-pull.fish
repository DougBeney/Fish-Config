function fishgit-pull
set curdir (pwd)
cd ~/.config/fish
git pull
cd $curdir
end
