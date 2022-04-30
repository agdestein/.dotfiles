# Commands to run in interactive sessions can go here
if status is-interactive
end

set fish_greeting

fish_vi_key_bindings
bind -M insert \cf accept-autosuggestion

# Emulates vim's cursor shape behavior
# Set the normal and visual mode cursors to a block
set fish_cursor_default block
# Set the insert mode cursor to a line
set fish_cursor_insert line
# Set the replace mode cursor to an underscore
set fish_cursor_replace_one underscore
# The following variable can be used to configure cursor shape in
# visual mode, but due to fish_cursor_default, is redundant here
set fish_cursor_visual block

set fish_vi_force_cursor

zoxide init fish | source
starship init fish | source

alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"
alias smacritty="WINIT_X11_SCALE_FACTOR=1 alacritty"
alias pluto="julia --project=~/.julia/environments/pluto -e 'using Pluto; Pluto.run()'"
alias l="exa -lah"
alias n="nvim"
alias h="handlr open"
alias gap="git -c 'interactive.diffFilter=less' add --patch"

if test (uname) = Linux
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

set fish_color_autosuggestion      blue
# set fish_color_cancel              -r
set fish_color_command             blue
# set fish_color_comment             brmagenta
# set fish_color_cwd                 green
# set fish_color_cwd_root            red
# set fish_color_end                 brmagenta
set fish_color_error               red
# set fish_color_escape              brcyan
# set fish_color_history_current     --bold
# set fish_color_host                normal
# set fish_color_match               --background=brblue
# set fish_color_normal              normal
# set fish_color_operator            cyan
set fish_color_param               brblue
# set fish_color_quote               yellow
# set fish_color_redirection         bryellow
# set fish_color_search_match        'bryellow' '--background=brblack'
# set fish_color_selection           'white' '--bold' '--background=brblack'
# set fish_color_status              red
# set fish_color_user                brgreen
# set fish_color_valid_path          --underline
# set fish_pager_color_completion    normal
# set fish_pager_color_description   yellow
# set fish_pager_color_prefix        'white' '--bold' '--underline'
# set fish_pager_color_progress      'brwhite' '--background=cyan'
