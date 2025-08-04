{pkgs, ...}: {
  home.packages = with pkgs; [
    # utilities
    yt-dlp
    ffmpeg
    blueman
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
    teamviewer
  ];
}
