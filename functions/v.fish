function v
	if test "$argv[1]" = ""
          set args ".venv"
        else
          set args "$argv[1]"
        end
        source $args/bin/activate.fish
end
