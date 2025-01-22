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
    ./jq.nix
    ./kitty.nix
    ./lazygit.nix
    ./man.nix
    ./opam.nix
    ./packages.nix
    ./ripgrep.nix
    ./starship.nix
    ./waybar.nix
    ./xdg.nix
    ./yazi.nix
    ./zed.nix
    ./zellij.nix
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
