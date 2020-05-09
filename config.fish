# Set package managers of various programming languages
# to install into a uniform location.
# - $HOME/.local/opt/packages/[programming-language]
export npm_config_prefix=$HOME/.local/opt/packages/node
export GEM_HOME=$HOME/.local/opt/packages/ruby
export PIP_TARGET=$HOME/.local/opt/packages/python