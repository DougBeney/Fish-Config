function pip-smart-install
	  pip install $argv
    set replace_requirements_txt false
    for i in $argv
        if echo $i | egrep "^-"
            continue
        else
            set parsed (printf '%s%s%s' $parsed '|' (printf $i'[><=]='))
        end
    end
    set parsed (echo $parsed | sed -e 's/|$//g' -e 's/^|//g')
    pip freeze | egrep $parsed >> requirements.txt
end
