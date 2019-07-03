# >> .---.-.-----.-----.-----.---.-.----.---.-.-----.----.-----.
# >> |  _  |  _  |  _  |  -__|  _  |   _|  _  |     |  __|  -__|
# >> |___._|   __|   __|_____|___._|__| |___._|__|__|____|_____|
# >>       |__|  |__|

font pango:DejaVu Sans Mono 8
$FW [class="^.*"] border pixel 2
# default_border none
gaps inner 10

# class                 border  backgr. text    indicator child_border
client.focused          $violet $baseA3 $baseB3 $violet   $violet
client.focused_inactive $baseA3 $baseA3 $baseB3 $baseA3   $baseA3
client.unfocused        $baseA3 $baseA3 $baseB3 $baseA3   $baseA3
client.urgent           $red    $baseA3 $baseB3 $red      $red
client.placeholder      $orange $baseA3 $baseB3 $orange   $orange

client.background       $baseA3
