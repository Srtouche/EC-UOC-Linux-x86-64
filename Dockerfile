FROM gitpod/workspace-full-vnc

RUN sudo apt-get update \
 && sudo DEBIAN_FRONTEND=noninteractive apt-get install -y \
   libgtk2.0-0 \
   libgtk-3-0 \
   libnotify-dev \
   libgconf-2-4 \
   libnss3 \
   libxss1 \
   libasound2 \
   libxtst6 \
   xauth \
   xvfb \
   geany \
   geany-plugins \
   yasm \
   xterm \
   build-essential \
   cmake \
   extra-cmake-modules \
   libkf5i18n5 \
   libkf5iconthemes5 \
   libkf5iconthemes-dev \
   libkf5xmlgui5 \
   libkf5xmlgui-dev \
   oxygen-icon-theme \
   breeze-gtk-theme \
   breeze-icon-theme \
 && sudo rm -rf /var/lib/apt/lists/*
 