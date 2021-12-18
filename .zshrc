export LANG=ja_JP.UTF-8
setopt print_eight_bit


# git-promptの読み込み
source ~/.zsh/git-prompt.sh

# git-completionの読み込み
fpath=(~/.zsh $fpath)
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
autoload -Uz compinit && compinit
#PROMPT='%F{cyan}%W%f %F{cyan}%*%f:%F{yellow}%m%f:%F{magenta}%n%f: %F{green}%~%f %F{red}$(__git_ps1 "%s" )%f '

## プロンプトのオプション表示設定
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto

# kubec-ps1
source "/usr/local/opt/kube-ps1/share/kube-ps1.sh"
#PS1='$(kube_ps1)'$PS1

# プロンプトの表示設定(好きなようにカスタマイズ可)
setopt PROMPT_SUBST ; PS1='$(kube_ps1) %F{green}%n: %F{cyan}%~%f %F{red}$(__git_ps1 "(%s)")%f
\$ '

# -----------------------------------------------------------------------------
# ls に色をつける
# -----------------------------------------------------------------------------
autoload -U compinit
compinit

export LSCOLORS=exfxcxdxbxegedabagacad
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

alias ls="ls -GF"
alias gls="gls --color"

zstyle ':completion:*' list-colors 'di=34' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'

# -----------------------------------------------------------------------------
# DirENV
# -----------------------------------------------------------------------------
eval "$(direnv hook zsh)"

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
# Terraform
# -----------------------------------------------------------------------------
export TF_CLI_ARGS_plan="--parallelism=30"
export TF_CLI_ARGS_apply="--parallelism=30"
export TF_CLI_ARGS_destroy="--parallelism=30"

# -----------------------------------------------------------------------------
# Kubernetes
# -----------------------------------------------------------------------------
# kubectl
alias k='kubectl'
alias argo='aws-vault exec cokeon -- kubectl port-forward svc/argocd-server -n argocd 8888:443'

# -----------------------------------------------------------------------------
# Goenv
# -----------------------------------------------------------------------------
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH

export GOENV_ROOT=$HOME/.goenv
export PATH=$GOENV_ROOT/bin:$PATH
export PATH=$HOME/.goenv/bin:$PATH
eval "$(goenv init -)"
export PATH="/usr/local/opt/mysql-client/bin:$PATH"
