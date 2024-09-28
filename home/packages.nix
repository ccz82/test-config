{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # utilities
    brightnessctl
    fastfetch
    zip
    unzip
    ripgrep
    fzf
    jq
    fd

    # build systems
    gnumake
    xmake

    # compilers
    gcc
    rustc
    cargo
    zig
    python3
    bun
    tectonic
  ];
}
