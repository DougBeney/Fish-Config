function t
    if test "$argv[2]" = ""
        echo Must provide a name of your project. NOTE! If you input "." the files will be copied to your current directory.
    else
        if test "$argv[2]" = "."
            cp -r $HOME/.config/fish/templates/$argv[1]/* "$PWD/"
        else
            cp -r "$HOME/.config/fish/templates/$argv[1]" "$argv[2]"
        end
        cd $argv[2]
        set after "$PWD/_after.fish"
        if test -e "$after"
            fish "$after" && rm "$after"
        end
    end
end

complete --command t --arguments '(ls ~/.config/fish/templates)'
