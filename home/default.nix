{username, ...}: {
  imports = [
    ./hyprland
    ./nixvim
    ./wofi
    ./bat.nix
    ./direnv.nix
    ./editorconfig.nix
    ./fastfetch.nix
    ./fd.nix
    ./gh.nix
    ./git.nix
    ./helix.nix
    ./jq.nix
    ./kitty.nix
    ./lazygit.nix
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
    sessionVariables = {
      MANPAGER = "nvim +Man!";
    };
    stateVersion = "24.05";
  };

  programs.home-manager.enable = true;
}
