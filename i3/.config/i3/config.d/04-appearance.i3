# >> .---.-.-----.-----.-----.---.-.----.---.-.-----.----.-----.
# >> |  _  |  _  |  _  |  -__|  _  |   _|  _  |     |  __|  -__|
# >> |___._|   __|   __|_____|___._|__| |___._|__|__|____|_____|
# >>       |__|  |__|

font pango:DejaVu Sans Mono 8
# for_window [class="^.*"] border pixel 0
default_border none
gaps inner 10

for_window [window_role="pop-up"] floating enable
for_window [class="Gnome-calculator"] floating enable
for_window [class="insync.py"] floating enable
for_window [class="Peek"] floating enable
for_window [instance="floatterm"] floating enable
for_window [instance="pbnmtui"] floating enable
for_window [instance="pbpacman"] floating enable
for_window [instance="nm-connection-editor"] floating enable
for_window [class="Yad" title="yad-calendar"] floating enable

for_window [instance="pbnmtui"] resize set 480 480
for_window [instance="pbnmtui"] move position center

for_window [instance="pbpacman"] resize set 480 480
for_window [instance="pbpacman"] move position center

# clientclass             border  backgr. text    indicator
client.focused            $violet $violet $baseB3 $blue
client.unfocused          $baseA2 $baseA2 $baseB1 $baseA1
client.urgent             $yellow $yellow $baseB3 $orange
client.focused_inactive   $baseA2 $baseA2 $baseB1 $violet

