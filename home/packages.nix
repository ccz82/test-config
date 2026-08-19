{pkgs, ...}: {
  home.packages = with pkgs; [
    # gui utilities
    vial
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
    claude-code

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
