{pkgs, ...}: {
  home.packages = with pkgs; [
    # gui utilities
    vial
    moonlight-qt
    xclicker
    nautilus
    obs-studio
    qbittorrent
    blueman
    pwvucontrol

    # cli utilities
    swaybg
    aria2
    gdb
    ddcutil
    yt-dlp
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
    prismlauncher
  ];
}
