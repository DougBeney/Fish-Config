function git-quickpush
if test "$argv" = ""
echo "You must provide a commit message"
return
end
git add .
git commit -m "$argv"
git push
end
