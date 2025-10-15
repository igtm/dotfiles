# # ~/.zshrc
# # Load seperated config files
# for conf in "$HOME/.config/zsh.d/"*.zsh; do
#   source "${conf}"
# done
# unset conf

# git
alias gb='git branch'
alias ga='git add --all'
alias gci='git commit'
alias gco='git checkout'
alias gs='git status -sb'
alias gd='git diff'
alias gpo='git push origin && sleep 3 && gh pr checks --watch'
alias gcod='git checkout develop'
alias gcom='git checkout master'
alias gf='git fetch --all'
alias gm='git merge'
alias gmom='git merge origin/master'
alias gcom='git checkout master'
alias gdh='git diff head'
alias gpoh='git push origin head'
alias gcp='git cherry-pick'
alias gl='git lg'
alias gn='git next'
alias todo='git grep -EI "TODO|FIXME"'
alias rmmb='git branch --merged | grep -v master | grep -v production | grep -v "*" | grep -v -F -f <(git worktree list | awk "{print \$3}" | sed "s/[\\[\\]]//g") | xargs -I % git branch -d % && git remote prune origin'

# github cli
alias ghpl='gh pr list'
alias ghpc='gh pr checks --watch'
alias ghb='gh browse'

# docker
alias d='docker'
alias dup='docker-compose up'
alias drm='docker rm -f `docker ps -aq`'
alias ds='docker ps'
alias de='docker exec -it'

# other cli
alias k='kubectl'
alias vi='nvim'
alias lg='lazygit'
alias tf='terraform'
alias cc='claude --dangerously-skip-permissions'
alias dlf='f() { docker compose logs "$1" -f --no-log-prefix | sed -E "s/^[^ ]+ +//" | fzf --ansi --no-sort --tac --preview "echo {}" --preview-window=wrap:50%; }; f'

