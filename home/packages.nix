{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # utilities
    brightnessctl
    fastfetch
    zip
    unzip
    jq

    # build systems
    gnumake
    xmake

    # compilers
    gcc
    python3
    dotnet-sdk
    opam
    rustup
    zig
    nodejs
    bun
  ];
}
