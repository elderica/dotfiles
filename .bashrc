# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

alias ls='ls --color=auto'
alias gitconfig="git config --global --include --list"
alias ocamlq="ocaml -no-version -noprompt -nopromptcont"
alias rrr="rlwrap ros run"
alias sbql="sbcl --noinform --quit --load"
alias sbcl="sbcl --noinform"
alias rlcl="rlwrap sbcl --noinform"

hilite() {
  for namestr in "$@"; do
    /usr/bin/src-hilite-lesspipe.sh "$namestr" | less -R
  done
}
