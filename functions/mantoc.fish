# Defined in /home/doug/.config/fish/functions/mantoc.fish @ line 1
function mantoc
    man $argv | egrep -E -o -e "^[A-Z][A-Z ]+" -e "^   [A-Z][A-Za-z\ ]+"
end
