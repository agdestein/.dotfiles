if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting

fish_vi_key_bindings
bind -M insert \cf accept-autosuggestion

zoxide init fish | source
starship init fish | source

alias julia="~/julia-1.7.0-rc3/bin/julia"
alias pluto="julia --project=~/.julia/environments/pluto -e 'using Pluto; Pluto.run()'"
alias l="exa -lah"
alias n="nvim"

# neofetch

set -gx EDITOR "nvim"
set -gx VISUAL "nvim"
# set -gx PAGER "bat"

