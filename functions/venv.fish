# Defined in - @ line 1
function venv --description 'blahblahblah'
    set venv_name $argv[1]
    if test "$venv_name" = ""
	set venv_name ".venv"
    end
    virtualenv $venv_name;
end
