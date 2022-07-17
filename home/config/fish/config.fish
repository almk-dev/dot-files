if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias groot='cd $(git rev-parse --show-toplevel)'
alias gst='git status'
alias lag='la --group-directories-first'
alias lav='la -v'
alias mpvnv='mpv --no-video'
alias open='xdg-open'
alias repall='cd ~/Documents/repos/'
alias repdot='cd ~/Documents/repos/dot-files/'
alias repsite='cd ~/Documents/repos/abdul-malek-dev.github.io/'
alias scon='find ~ -name "*.sync*"'
alias xclip='xclip -selection clipboard'

function pkgup
    sudo apt update
    sudo apt upgrade
    sudo apt autoclean
    sudo apt autoremove --purge
    switch $argv[1]
        case "-a" "--all"
            pip3 install --upgrade youtube-dl yt-dlp
            vim +PlugUpdate +PlugUpgrade +PlugClean +qa
    end
end

function mlib
    switch $argv[1]
        case "-m" "--cmus"
            grep -i $argv[2] ~/.config/cmus/lib.pl
        case "-a" "--append"
            echo $argv[2] >> ~/Music/.tracking/research
            tail ~/Music/.tracking/research
        case "-e" "--edit"
            vim ~/Music/.tracking/research
        case "-c" "--count"
            cat ~/Music/.tracking/* | wc -l
        case "-s" "--shuffle"
            if set -q argv[2]
                cat ~/Music/.tracking/* | shuf -n $argv[2]
            else
                cat ~/Music/.tracking/* | shuf -n 1
            end
        case "*"
            grep -i $argv[1] ~/Music/.tracking/*
    end
end

function vlib
    switch $argv[1]
        case "-a" "--append"
            echo $argv[2] >> ~/Videos/.tracking/research
            tail ~/Videos/.tracking/research
        case "-e" "--edit"
            vim ~/Videos/.tracking/research
        case "-c" "--count"
            cat ~/Videos/.tracking/* | wc -l
        case "-s" "--shuffle"
            if set -q argv[2]
                cat ~/Videos/.tracking/* | shuf -n $argv[2]
            else
                cat ~/Videos/.tracking/* | shuf -n 1
            end
        case "*"
            grep -i $argv[1] ~/Videos/.tracking/*
    end
end

function gsdel
end

function gsup
    set -l submodules (git submodule update --recursive --remote)
    if test -z submodules
        echo ayy
        # git commit -am "Update submodules to upstream (gsup)"
    end
end

