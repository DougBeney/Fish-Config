function gif2webm
set file $argv[1]
ffmpeg -i "$file" -c:v libvpx -crf 12 -b:v 500K -auto-alt-ref 0 "$file.webm"
end
