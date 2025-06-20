{pkgs, ...}: {
  home.packages = with pkgs; [
    # utilities
    pwvucontrol
    brightnessctl
    zip
    unzip
    lazysql
    hexxy

    # runtimes
    python3
    bun
    nodejs

    # games
    prismlauncher

    # programs
    vesktop
    obs-studio
    tiled
    parsec-bin
  ];
}
