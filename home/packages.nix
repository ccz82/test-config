{ pkgs, ... }:

{
  home.packages = with pkgs; [
    zip
    unzip
    ripgrep
    fzf
    jq
    fd
    gnumake
    xmake
    fastfetch
    gcc
    rustc
    cargo
    zig
    python3
    bun
    tectonic
  ];
}
