{pkgs, ...}: {
  home.packages = with pkgs; [
    # gui utilities
    cantata
    mpc
    sonobus
    vlc
    vial
    xclicker
    nautilus
    obs-studio
    qbittorrent
    blueman
    pwvucontrol

    # cli utilities
    swaybg
    ddcutil
    zip
    unzip
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
