alias ls='ls -FG'
alias ll='ls -alFG'

# -----------------------------------------------------------------------------
# Bash Completion
# -----------------------------------------------------------------------------
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  source $(brew --prefix)/etc/bash_completion
fi

# -----------------------------------------------------------------------------
# PS1
# -----------------------------------------------------------------------------
# git
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true

# export PS1='\[\033[37m\][\[\033[36m\]\u\[\033[37m\]@\h \[\033[32m\]\W\[\033[37m\]]\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '
export PS1='\[\033[32m\]\W\[\033[37m\]\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '

# kube-ps1(brew install kube-ps1)
source "/usr/local/opt/kube-ps1/share/kube-ps1.sh"
PS1='$(kube_ps1)'${PS1}

# -----------------------------------------------------------------------------
# DirENV
# -----------------------------------------------------------------------------
eval "$(direnv hook bash)"

# -----------------------------------------------------------------------------
# Serverless Framework
# -----------------------------------------------------------------------------
# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash ] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash ] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.bash ] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.bash

# -----------------------------------------------------------------------------
# AWS-Vault
# -----------------------------------------------------------------------------
export AWS_VAULT_PASS_PREFIX=aws-vault
export AWS_ASSUME_ROLE_TTL=1h
export AWS_SESSION_TOKEN_TTL=1h

# -----------------------------------------------------------------------------
# HomeBrew
# -----------------------------------------------------------------------------
export HOMEBREW_EDITOR="/usr/bin/vim"

# -----------------------------------------------------------------------------
# Python
# -----------------------------------------------------------------------------
export PATH=/usr/local/opt/python/libexec/bin:$PATH

# -----------------------------------------------------------------------------
# Terraform
# -----------------------------------------------------------------------------
# Terraform
export TF_CLI_ARGS_plan="--parallelism=30"
export TF_CLI_ARGS_apply="--parallelism=30"
export TF_CLI_ARGS_destroy="--parallelism=30"

# -----------------------------------------------------------------------------
# Kubernetes
# -----------------------------------------------------------------------------
# kubectl
alias k='kubectl'

# git add
alias ga='git add -A && git commit -m commit && git push origin master'
alias gaa='git add -A && git commit -m commit && a git push origin master'
alias ql='qlmanage -p "$@" >& /dev/null'

alias argo='aws-vault exec cokeon -- kubectl port-forward svc/argocd-server -n argocd 8888:443'
