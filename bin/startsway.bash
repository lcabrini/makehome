#! /bin/bash

export SDL_VIDEODRIVER=wayland
export XDG_CURRENT_DESKTOP=sway
export MOZ_ENABLE_WAYLAND=1
eval $(ssh-agent)
sway
