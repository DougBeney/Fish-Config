export PATH="$NPM_PACKAGES/bin:$PATH"
set -x MAN_POSIXLY_CORRECT
export GEM_HOME=$HOME/.gem

alias pip-upgrade="pip freeze --user | cut -d'=' -f1 | xargs -n1 pip install -U"
alias pip-upgrade-venv="pip freeze | cut -d'=' -f1 | xargs -n1 pip install -U"

set -x LESS_TERMCAP_mb (printf "\033[01;31m")  
set -x LESS_TERMCAP_md (printf "\033[01;31m")  
set -x LESS_TERMCAP_me (printf "\033[0m")  
set -x LESS_TERMCAP_se (printf "\033[0m")  
set -x LESS_TERMCAP_so (printf "\033[01;44;33m")  
set -x LESS_TERMCAP_ue (printf "\033[0m")  
set -x LESS_TERMCAP_us (printf "\033[01;32m")  

