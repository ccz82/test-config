{username, ...}: {
  imports = [
    ./hyprland
    ./nixvim
    ./wofi
    ./bat.nix
    ./editorconfig.nix
    ./fastfetch.nix
    ./fd.nix
    ./gh.nix
    ./git.nix
    ./jq.nix
    ./kitty.nix
    ./lazygit.nix
    ./opam.nix
    ./packages.nix
    ./ripgrep.nix
    ./starship.nix
    ./xdg.nix
    ./yazi.nix
    ./zsh.nix
  ];

  home = {
    username = "${username}";
    homeDirectory = "/home/${username}";
    stateVersion = "24.05";
  };

  programs.home-manager.enable = true;
}
