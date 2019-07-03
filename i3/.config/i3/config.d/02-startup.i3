# >>        __              __
# >> .-----|  |_.---.-.----|  |_.--.--.-----.
# >> |__ --|   _|  _  |   _|   _|  |  |  _  |
# >> |_____|____|___._|__| |____|_____|   __|
# >>                                  |__|

# exec_always --no-startup-id $HOME/.config/polybar/scripts/launch.sh
exec_always --no-startup-id $HOME/.local/bin/polybar-launch
exec_always --no-startup-id $HOME/.local/bin/wallpapersetter
exec --no-startup-id /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 & eval $(gnome-keyring-daemon -s --components=pkcs11,secrets,ssh,gpg)

