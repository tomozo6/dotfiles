if [ -f ~/.bashrc ] ; then
. ~/.bashrc
fi

#export PYENV_ROOT=${HOME}/.pyenv
#if [ -d "${PYENV_ROOT}" ]; then
#    export PATH=${PYENV_ROOT}/bin:$PATH
#    eval "$(pyenv init -)"
#fi

#Neovim
export PATH="/usr/local/opt/gettext/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/gettext/lib"
export CPPFLAGS="-I/usr/local/opt/gettext/include"

# -------------------------------------------------------------------------
# pyenv
# -------------------------------------------------------------------------
# pyenvさんに~/.pyenvではなく、/usr/loca/var/pyenvを使うようにお願いする
export PYENV_ROOT=/usr/local/var/pyenv

# pyenvさんに自動補完機能を提供してもらう
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
export PATH="/usr/local/opt/curl/bin:$PATH"
export PATH="/usr/local/opt/mysql-client/bin:$PATH"
export PATH=$HOME/.nodebrew/current/bin:$PATH
