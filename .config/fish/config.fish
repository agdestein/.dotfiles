# Commands to run in interactive sessions can go here
if status is-interactive
end

set fish_greeting

# fish_vi_key_bindings
# bind -M insert \cf accept-autosuggestion
#
# # Emulates vim's cursor shape behavior
# # Set the normal and visual mode cursors to a block
# set fish_cursor_default block
#
# # Set the insert mode cursor to a line
# set fish_cursor_insert line
#
# # Set the replace mode cursor to an underscore
# set fish_cursor_replace_one underscore
#
# # The following variable can be used to configure cursor shape in
# # visual mode, but due to fish_cursor_default, is redundant here
# set fish_cursor_visual block
#
# set fish_vi_force_cursor

zoxide init fish | source
starship init fish | source

alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"
alias pluto="julia --project=~/.julia/environments/pluto -e 'using Pluto; Pluto.run()'"
alias l="exa -a"
alias ll="exa -lah"
alias n="nvim"
alias h="handlr open"
alias gap="git -c 'interactive.diffFilter=less' add --patch"
alias icat="wezterm imgcat"


if test (uname) = Linux
    # alias julia="LD_PRELOAD=/usr/lib64/libstdc++.so.6 /usr/bin/julia"

    # Force old driver for Matlab 2019a: i965
    alias matlab="env LD_PRELOAD=/usr/lib/libstdc++.so LD_LIBRARY_PATH=/usr/lib/xorg/modules/dri/ MESA_LOADER_DRIVER_OVERRIDE=i965 matlab"
end

set -gx EDITOR "nvim"
set -gx VISUAL "nvim"
# set -gx MANPAGER "most"
set -gx MANPAGER "sh -c 'col -bx | bat -l man -p'"
set -gx PRINTER "olive"

if test (uname) = Darwin
    export DBUS_SESSION_BUS_ADDRESS="unix:path=$DBUS_LAUNCHD_SESSION_BUS_SOCKET"
end

# draculau
default_colors

