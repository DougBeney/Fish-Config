# Set package managers of various programming languages
# to install into a uniform location.
# - $HOME/.local/opt/packages/[programming-language]
set PKG_DIR $HOME/.local/opt/packages

export PYTHONUSERBASE=$PKG_DIR/python
export npm_config_prefix=$PKG_DIR/node
export GEM_HOME=$PKG_DIR/ruby

export PATH="\
$PATH:\
$PKG_DIR/python/bin:\
$PKG_DIR/node/bin:\
$PKG_DIR/ruby/bin"

# Unset variable. We do not need it anymore.
set -e PKG_DIR