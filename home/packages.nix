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

    # browser
    inputs.zen-browser.packages."${system}".default

    # utilities
    pavucontrol
    brightnessctl
    zip
    unzip
    lazysql

    # runtimes
    python3
    bun
    nodejs

    # games
    lutris
    prismlauncher

    # programs
    zathura
    aseprite
    tiled
  ];
}
