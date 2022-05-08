#!/usr/bin/bash
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
  #Unityhub repo
  sudo sh -c 'echo -e "[unityhub]\nname=Unity Hub\nbaseurl=https://hub.unity3d.com/linux/repos/rpm/stable\nenabled=1\ngpgcheck=1\ngpgkey=https://hub.unity3d.com/linux/repos/rpm/stable/repodata/repomd.xml.key\nrepo_gpgcheck=1" > /etc/yum.repos.d/unityhub.repo'
  #Docker repo
  sudo dnf -y remove docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-selinux docker-engine docker-engine
  sudo dnf -y config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo
  #Flathub repo
  sudo dnf install -y flatpak
  sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
  #Fedora repo to be safe
  sudo flatpak remote-add --if-not-exists fedora oci+https://registry.fedoraproject.org

  sudo dnf -y check-update; sudo dnf -y upgrade
#Packages and git repos
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
    # - unityhub
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
    # - crontab
  #TODO: Remove:
    # - firefox
    #TODO: Add more apps to be removed (if needed)
