# Fish git prompt
set __fish_git_prompt_showdirtystate 'yes'C
set __fish_git_prompt_color_upstream_behind red

function fish_prompt
    set_color green
    printf "• %s/ " (basename (pwd))
    set_color normal
end
