
source ~/.me.conf/zsh.d/git-prompt.sh

plugins=(git rails ruby)

setopt PROMPT_SUBST ; PS1='[%n@%m %c$(__git_ps1 " (%s)")]\$ '
