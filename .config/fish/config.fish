if status is-interactive
    # Commands to run in interactive sessions can go here
    alias s=exa
    alias gitconfig="git config --global --include --list"
    alias ocamlq="ocaml -no-version -noprompt -nopromptcont"
    alias rrr="rlwrap ros run"
    alias sbql="sbcl --noinform --quit --load"
    alias sbcl="sbcl --noinform"
    alias rlcl="rlwrap sbcl --noinform"
    alias eparu="env LANG=en_US.UTF-8 paru"
end

fish_add_path $HOME/bin
fish_add_path $HOME/.local/bin

fish_add_path $HOME/.cargo/bin
fish_add_path $HOME/go/bin

set -x LESSOPEN '| /usr/bin/src-hilite-lesspipe.sh %s'
set -x LESS '-RX'

function cdl
  set dirname $argv[1]
  eval "cd" $dirname
  exa
end

function mkcd
  set dirname $argv[1]
  mkdir -p $dirname
  eval "cd" $dirname
end
