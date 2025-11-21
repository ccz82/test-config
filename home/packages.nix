{pkgs, ...}: {
  home.packages = with pkgs; [
    # kvm
    ddcutil

    # utilities
    yt-dlp
    ffmpeg
    blueman
    ydotool
    pwvucontrol
    zip
    unzip
    lazysql
    hexxy

    # runtimes
    python3
    uv
    bun
    nodejs
    zvm

    # games
    winetricks
    wineWowPackages.waylandFull
    prismlauncher

    # programs
    obs-studio
    teamviewer
  ];
}
