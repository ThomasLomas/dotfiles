#!/bin/bash

source "utils.sh"

print_in_purple '\n  UI & UX\n\n'

execute "gsettings set com.canonical.indicator.power icon-policy 'charge' \
            && gsettings set com.canonical.indicator.power show-time false" \
        "Hide battery icon from the menu bar when the battery is not in use"
