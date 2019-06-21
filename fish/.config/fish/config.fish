# set variables for user applications
set -g -x BROWSER "google-chrome-stable"
# set -g -x TERMINAL "urxvt"
set -g -x TERMINAL "kitty"
set -g -x FILES "ranger"
set -g -x FILES_ALT "thunar"
set -g -x EDITOR "subl"

set -g -x SCHEME "solarized"

# set variables for i3fyra
set -g -x I3FYRA_MAIN_CONTAINER "C"
set -g -x I3FYRA_WS "1"
set -g -x I3FYRA_ORIENTATION "horizontal"

# Go variables
set -g -x GOPATH "$HOME/src/go"

# set dotfiles directory variable
set -g -x DOTSDIR "$HOME/.dotfiles"

# Start X at login
if status --is-login
  if test -z "$DISPLAY" -a $XDG_VTNR = 1
    exec startx -- -keeptty
  end
end

kitty + complete setup fish | source
