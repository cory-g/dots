# >>  __          __                __
# >> |  |--.-----|  |--.---.-.--.--|__.-----.----.
# >> |  _  |  -__|     |  _  |  |  |  |  _  |   _|
# >> |_____|_____|__|__|___._|\___/|__|_____|__|

floating_modifier $super
focus_follows_mouse no
# bindsym $super+Tab workspace back_and_forth

bindsym $super+Control+a exec --no-startup-id exec i3fyra -m A
bindsym $super+Control+b exec --no-startup-id exec i3fyra -m B
bindsym $super+Control+c exec --no-startup-id exec i3fyra -m C
bindsym $super+Control+d exec --no-startup-id exec i3fyra -m D

bindsym $super+Tab       exec --no-startup-id exec i3flip n
bindsym $super+Shift+Tab exec --no-startup-id exec i3flip p
