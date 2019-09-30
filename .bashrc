#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

test -r "~/.dir_colors" && eval $(dircolors ~/.dir_colors)

# export GDK_BACKEND='wayland'
export MOZ_ENABLE_WAYLAND='1'
export _JAVA_AWT_WM_NONREPARENTING='1'
export WLR_DRM_DEVICES='/dev/dri/card0'
export QT_QPA_PLATFORM='wayland-egl'
export QT_WAYLAND_FORCE_DPI='physical'
export QT_WAYLAND_DISABLE_WINDOWDECORATION='1'
export ECORE_EVAS_ENGINE='wayland_egl'
export ELM_ENGINE='wayland_egl'
export SDL_VIDEODRIVER='wayland'
export BROWSER='firefox'
