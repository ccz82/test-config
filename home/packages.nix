{pkgs, ...}: {
  home.packages = with pkgs; [
    # utilities
    brightnessctl
    fastfetch
    zip
    unzip
    jq
    fd
    ripgrep

    # compilers and interpreters
    gcc
    python3
    dotnet-sdk
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
    prismlauncher

    # programs
    discord
    zathura
  ];
}
