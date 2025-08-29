{pkgs, ...}: {
  home.packages = with pkgs; [
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
    bun
    nodejs

    # games
    winetricks
    wineWowPackages.waylandFull
    prismlauncher

    # programs
    obs-studio
    teamviewer
  ];
}
