#!/usr/bin/env python3
#
# i3listen.py - 0.0.1 - June  4, 2019 @  9:08 am
# created: June  4, 2019 @  9:08 am by Cory G
# license: gpl-2.0
#
#  __ ______ __ __       __
# |__|__    |  |__.-----|  |_.-----.-----.  .-----.--.--.
# |  |__    |  |  |__ --|   _|  -__|     |__|  _  |  |  |
# |__|______|__|__|_____|____|_____|__|__|__|   __|___  |
#                                           |__|  |_____|
#
# *******************************
# A script I've stupidly left with the default description and vaguely named i3listen.py
# ------------------------------------------
#
# contact
# -------
# << cory.gantenbein@protonmail.com >> || << https://coryg.me >>

from i3ipc import Connection
from subprocess import call

i3 = Connection()


def windownotify(i3, event):
    if event.container.fullscreen_mode == 0:
        call('polybar-msg cmd show'.split(' '))
    else:
        call('polybar-msg cmd hide'.split(' '))


    if event.change in "focus" "title":
        call('polybar-msg hook titlehook 2'.split(' '))

        # print(event.container.fullscreen_mode)


i3.on('window', windownotify)

i3.main()
