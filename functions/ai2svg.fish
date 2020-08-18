function ai2svg
for i in $argv
inkscape -f "$i" -l "$i.svg"
end
end
