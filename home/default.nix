{username, ...}: {
  imports = [
    ./packages.nix
    ./git.nix
    ./gh.nix
    ./zsh.nix
    ./starship.nix
    ./nixvim
    ./hyprland.nix
    ./xdg.nix
    ./kitty.nix
    ./waybar
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
