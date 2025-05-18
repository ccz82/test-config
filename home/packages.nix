{
  pkgs,
  inputs,
  ...
}: {
  home.packages = with pkgs; [
    # browser
    inputs.zen-browser.packages."${system}".default

    # utilities
    pwvucontrol
    brightnessctl
    zip
    unzip
    lazysql

    # runtimes
    python3
    bun
    nodejs

    # games
    prismlauncher

    # programs
    tiled
  ];
}
