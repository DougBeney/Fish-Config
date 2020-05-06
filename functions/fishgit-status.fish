function fishgit-status
set curdir (pwd)
cd ~/.config/fish
git status
cd $curdir
end
