{pkgs, ...}: {
  home.packages = with pkgs; [
    # gui utilities
    obs-studio
    blueman
    pwvucontrol

    # cli utilities
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
