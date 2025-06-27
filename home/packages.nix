{pkgs, ...}: {
  home.packages = with pkgs; [
    # utilities
    ydotool
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
    obs-studio
  ];
}
