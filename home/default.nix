{username, ...}: {
  imports = [
    ./packages.nix
    ./zsh.nix
    ./git.nix
    ./gh.nix
    ./starship.nix
    ./yazi.nix
    ./fastfetch.nix
    ./bat.nix
    ./ripgrep.nix
    ./jq.nix
    ./fd.nix
    ./nixvim
    ./hyprland
    ./hyprlock.nix
    ./xdg.nix
    ./kitty.nix
    ./wofi
    ./opam.nix
  ];

  home = {
    username = "${username}";
    homeDirectory = "/home/${username}";
    stateVersion = "24.05";
  };

  programs.home-manager.enable = true;
}
