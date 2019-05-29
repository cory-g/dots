# set variables for user applications
set -g -x BROWSER "google-chrome-stable"
set -g -x TERMINAL "urxvt"
set -g -x FILES "thunar"
set -g -x EDITOR "subl"

# set dotfiles directory variable
set -g -x DOTSDIR "$HOME/.dotfiles"

# Start X at login
if status --is-login
  if test -z "$DISPLAY" -a $XDG_VTNR = 1
    exec startx -- -keeptty
  end
end
