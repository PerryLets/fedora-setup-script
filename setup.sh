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
    # VS Code repo
      sudo dnf -y config-manager --add-repo https://packages.microsoft.com/keys/microsoft.asc
      sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
    #Docker repo
      sudo dnf -y remove docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-selinux docker-engine docker-engine
      sudo dnf -y config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo
    #Flathub repo
      sudo dnf install -y flatpak
      sudo dnf install -y plasma-discover-flatpak
      sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
    #Fedora repo to be safe
      sudo flatpak remote-add --if-not-exists fedora oci+https://registry.fedoraproject.org
    #Google Chrome repo
      sudo dnf -y install fedora-workstation-repositories

  #Packages and git repos
    sudo dnf -y check-update; sudo dnf -y upgrade
    #TODO: Install:
      # - git (just to be sure)
        sudo dnf -y install git
      #! - rtl8822bu wireless driver (maybe not needed)
      # - node.js
      # - dotnet sdk
        sudo dnf -y install dotnet-sdk-6.0
      # - nuget
        sudo dnf -y install nuget
      # - python3
        sudo dnf -y install python3.11
      # - gcc
        sudo dnf -y install gcc
      # - g++
        sudo dnf -y install gcc-c++
      # - code
        sudo dnf -y install code
      # - docker
        sudo dnf -y install docker-ce docker-ce-cli containerd.io
        sudo systemctl enable docker
      # - fira code
        sudo dnf -y install fira-code-fonts
      # - MesloLGS NF
      # - audacity
        sudo dnf -y install audacity
      # - krita
        sudo dnf -y install krita
      # - vlc
        sudo dnf -y install vlc
      # - discord
        sudo dnf -y install discord
      # - spotify
        sudo flatpak install -y com.spotify.Client
      # - chrome

      # - crontab (I had to install it on Fedora 35 for some reason)
      # - irssi
      # - tilix
      # - vim
      # - zsh
      # - powerlevel10k
      # - zsh-syntax-highlighting
      # - zsh-autosuggestions
    #TODO: Remove:
      #TODO: Add apps
