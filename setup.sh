#!/usr/bin/bash
  # Set up the environment
    sudo dnf -y check-update; sudo dnf -y upgrade
    sudo dnf -y install dnf-plugins-core
    # RPM Fusion Free
      sudo dnf -y install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
    # RPM Fusion Non-Free
      sudo dnf -y install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
    # RPM Fusion appstream
      sudo dnf -y group update core
    # Vs Code repo
      sudo dnf -y config-manager --add-repo https://packages.microsoft.com/keys/microsoft.asc
      sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
    #Docker repo
      sudo dnf -y remove docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-selinux docker-engine docker-engine
      sudo dnf -y config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo
    #Flathub repo
      sudo dnf install -y flatpak
      sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
    #Fedora repo to be safe
      sudo flatpak remote-add --if-not-exists fedora oci+https://registry.fedoraproject.org

  #Packages and git repos
    sudo dnf -y check-update; sudo dnf -y upgrade
    #TODO: Install:
      #! - rtl8822bu wireless driver (maybe not needed)
      # - node.js
      # - dotnet sdk
      # - nuget
      # - python3
      # - gcc
      # - g++
      # - code
      # - git (just to be sure)
      # - docker
      # - fira code
      # - MesloLGS NF
      # - audacity
      # - krita
      # - vlc
      # - discord
      # - spotify
      # - chrome
      # - tilix
      # - zsh
      # - zsh-syntax-highlighting
      # - zsh-autosuggestions
      # - vim
      # - irssi
      # - crontab (I had to install it on Fedora 35 for some reason)
    #TODO: Remove:
      #TODO: Add more apps to be removed (if needed)
