alias ls='ls -FG'
alias ll='ls -alFG'

#for bash_completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  source $(brew --prefix)/etc/bash_completion
fi

# git ps1
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\033[37m\][\[\033[36m\]\u\[\033[37m\]@\h \[\033[32m\]\W\[\033[37m\]]\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '

# direnv
eval "$(direnv hook bash)"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash ] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash ] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash


#alias ave='aws-vault exec --session-ttl=1h --assume-role-ttl=1h'
alias ave='aws-vault exec'
alias ac='aws-vault exec cokeon --'

# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.bash ] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.bash

# brew python
export PATH=/usr/local/opt/python/libexec/bin:$PATH

# Terraform
export TF_CLI_ARGS_plan="--parallelism=30"
export TF_CLI_ARGS_apply="--parallelism=30"
export TF_CLI_ARGS_destroy="--parallelism=30"

# Kubernetes
alias k='aws-vault exec cokeon -- kubectl'

# Helm
alias h='aws-vault exec cokeon -- helm'

# iterm
function title ()
{
    TITLE=$*;
    export PROMPT_COMMAND='echo -ne "\033]0;$TITLE\007"'
}

function vimmemo ()
{
  vim /Users/tomohiro.b.sasaki/memo/$(date '+%Y%m')
}

function catmemo ()
{
  cat /Users/tomohiro.b.sasaki/memo/$(date '+%Y%m')
}
