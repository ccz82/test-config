{
  pkgs,
  inputs,
  ...
}: {
  home.packages = with pkgs; [
    # hyprland
    hyprpolkitagent
    hyprpicker
    hyprshot
    wayvnc

    # browser
    inputs.zen-browser.packages."${system}".twilight
    firefox

    # utilities
    pavucontrol
    brightnessctl
    zip
    unzip
    lazysql

    # compilers and interpreters
    gcc
    python3
    dotnet-sdk_8
    rustup
    zig
    nodejs
    bun

    # build systems
    gnumake
    xmake

    # man pages
    man-pages
    man-pages-posix

    # games
    lutris
    prismlauncher

    # programs
    vesktop
    zathura
    vial
  ];
}
