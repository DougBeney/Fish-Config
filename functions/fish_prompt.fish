function fish_prompt
#if set -q VIRTUAL_ENV
#    printf "%s %s(%s)%s > " (basename (pwd)) (set_color red) (basename "$VIRTUAL_ENV") (set_color normal)
#else
    printf "%s > " (basename (pwd))
#end
end
