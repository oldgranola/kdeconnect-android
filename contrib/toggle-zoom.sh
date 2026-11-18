#!/bin/sh
# Toggle Cinnamon's desktop zoom ("Enable zoom" in Accessibility > Visual).
# Bound to Alt+Super+8 so the KDE Connect "Lens" button can switch it on and off.

KEY=org.cinnamon.desktop.a11y.applications

if [ "$(gsettings get $KEY screen-magnifier-enabled)" = "true" ]; then
    gsettings set $KEY screen-magnifier-enabled false
else
    gsettings set $KEY screen-magnifier-enabled true
fi
