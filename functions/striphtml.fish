function striphtml
while read -l line
echo $line | sed -e 's/<\/b>/-/g' -e 's/<[^>]*>//g'
end
end
