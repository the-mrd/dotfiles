[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
urxvtd --quiet --fork --opendisplay
nvidia-settings --load-config-only &
exec ck-launch-session dbus-launch --sh-syntax --exit-with-session i3 -V >~/.i3/i3log-$(date +'%m-%d-%H_%M') 2>&1
