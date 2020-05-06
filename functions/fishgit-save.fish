function fishgit-save
if test "$argv" = ""
echo You need to provide a change message
return
end
set curdir (pwd)
cd ~/.config/fish
git add .
git commit -m "$argv"
git push
cd $curdir
end
