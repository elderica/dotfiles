# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

alias ls='ls --color=auto'

hilite() {
  for namestr in "$@"; do
    /usr/bin/src-hilite-lesspipe.sh "$namestr" | less -R
  done
}
