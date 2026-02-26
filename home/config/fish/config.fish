if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias groot='cd $(git rev-parse --show-toplevel)'
alias gst='git status'
alias hx='helix'
alias lag='la --group-directories-first'
alias lav='la -v'
alias mpvnv='mpv --no-video'
alias open='xdg-open'
alias scon='find ~ -name "*.sync-conflict*" -o -name "*.syncthing*.tmp"'
alias xclip='xclip -selection clipboard'

# general
set -gx PAGER less
set -gx EDITOR helix
set -gx VISUAL helix

# gpg
set -gx GPG_TTY (tty)

# less
set -gx LESS Rx4

# local
set -gx LOCAL_HOME "$HOME/.local/bin"
set -gx PATH $PATH "$LOCAL_HOME"

# go
set -gx GO_HOME /usr/local/go/bin
set -gx GOPATH "$HOME/.go"
set -gx PATH $PATH "$GO_HOME" "$GOPATH/bin"

# rust
set -gx RUST_HOME "$HOME/.cargo/bin"
set -gx PATH $PATH "$RUST_HOME"

# ruby-gems
set -gx GEM_HOME "$HOME/.gems/bin"
set -gx PATH $PATH "$GEM_HOME"

# pnpm
set -gx PNPM_HOME "$HOME/.local/share/pnpm"
set -gx PATH $PATH "$PNPM_HOME"

function mlib
    switch $argv[1]
        case -a --append
            echo $argv[2] >>~/Music/.tracking/research
            tail ~/Music/.tracking/research
        case -e --edit
            vim ~/Music/.tracking/research
        case -c --count
            cat ~/Music/.tracking/* | wc -l
        case -s --shuffle
            if set -q argv[2]
                cat ~/Music/.tracking/* | shuf -n $argv[2]
            else
                cat ~/Music/.tracking/* | shuf -n 1
            end
        case -l --library
            set query (string join " " $argv[2..-1])
            find ~/Music/library/ -type f -printf '%P\n' | grep -i $query
        case "*"
            set query (string join " " $argv[1..-1])
            grep -i $query ~/Music/.tracking/*
    end
end

function vlib
    switch $argv[1]
        case -a --append
            echo $argv[2] >>~/Videos/.tracking/research
            tail ~/Videos/.tracking/research
        case -e --edit
            vim ~/Videos/.tracking/research
        case -c --count
            cat ~/Videos/.tracking/* | wc -l
        case -s --shuffle
            if set -q argv[2]
                cat ~/Videos/.tracking/* | shuf -n $argv[2]
            else
                cat ~/Videos/.tracking/* | shuf -n 1
            end
        case "*"
            set query (string join " " $argv[1..-1])
            grep -i $query ~/Videos/.tracking/*
    end
end
