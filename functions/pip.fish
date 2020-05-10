# Defined in - @ line 1
function pip --wraps=pip3 --wraps='python3 -m pip' --description 'alias pip=python3 -m pip'
  python3 -m pip $argv;
end
