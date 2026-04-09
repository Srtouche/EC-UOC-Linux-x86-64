FROM mcr.microsoft.com/devcontainers/base:ubuntu-22.04

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
   autocutsel \
   lxtask \
   evince \
   locales \
   tzdata \
 && sudo locale-gen es_ES.UTF-8 \
 && sudo update-locale LANG=es_ES.UTF-8 LC_ALL=es_ES.UTF-8 \
 && sudo ln -sf /usr/share/zoneinfo/Europe/Madrid /etc/localtime \
 && echo "Europe/Madrid" | sudo tee /etc/timezone \
 && sudo dpkg-reconfigure -f noninteractive tzdata \
 && sudo rm -rf /var/lib/apt/lists/*

# Bake Fluxbox config into the image so it works from the very first start
COPY .devcontainer/fluxbox-startup /home/vscode/.fluxbox/startup
COPY .devcontainer/fluxbox-menu /home/vscode/.fluxbox/menu
COPY .devcontainer/fluxbox-init /home/vscode/.fluxbox/init
RUN chmod +x /home/vscode/.fluxbox/startup \
 && chown vscode:vscode /home/vscode/.fluxbox/startup /home/vscode/.fluxbox/menu /home/vscode/.fluxbox/init

RUN echo "alias startdesktop='bash /workspaces/EC-UOC-Linux-x86-64/start-desktop.sh'" >> /home/vscode/.bashrc

