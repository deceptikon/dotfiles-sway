# If running from tty1 start sway
if [ "$(tty)" = "/dev/tty1" ]; then
  export XDG_CURRENT_DESKTOP=Unity
  export MOZ_ENABLE_WAYLAND=1
  exec sway
fi