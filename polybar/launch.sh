#!/usr/bin/env sh

## Add this to your wm startup file.

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar
i=0
for monitor in $(xrandr -q | grep " connected" | cut -d ' ' -f1); do
    let i=$i+1
done
if [[ $i == 1 ]]; then
  polybar -c ~/.config/polybar/config.ini top &
  polybar -c ~/.config/polybar/config.ini bottom &
else
  polybar -c ~/.config/polybar/config.ini top &
  polybar -c ~/.config/polybar/config.ini bottom &

    polybar -c ~/.config/polybar/config2.ini top &
  polybar -c ~/.config/polybar/config2.ini bottom &

fi
