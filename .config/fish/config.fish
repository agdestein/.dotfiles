# Commands to run in interactive sessions can go here
if status is-interactive
    # New greeting
    # neofetch
    colorscript --random
    # colorscript -e panes
end

set fish_greeting

fish_vi_key_bindings
bind -M insert \cf accept-autosuggestion

zoxide init fish | source
starship init fish | source

alias matlab="env LD_PRELOAD=/usr/lib/libstdc++.so LD_LIBRARY_PATH=/usr/lib/xorg/modules/dri/ MESA_LOADER_DRIVER_OVERRIDE=i965 matlab"
alias pluto="julia --project=~/.julia/environments/pluto -e 'using Pluto; Pluto.run()'"
alias l="exa -lah"
alias n="nvim"

set -gx EDITOR "nvim"
set -gx VISUAL "nvim"
# set -gx PAGER "bat"

