{username, ...}: {
  imports = [
    ./hyprland
    ./nixvim
    ./walker
    ./waybar
    ./bat.nix
    ./btop.nix
    ./direnv.nix
    ./editorconfig.nix
    ./fastfetch.nix
    ./fd.nix
    ./gh.nix
    ./git.nix
    ./gnome-keyring.nix
    ./helix.nix
    ./jq.nix
    ./kitty.nix
    ./lazygit.nix
    ./lutris.nix
    ./mako.nix
    ./packages.nix
    ./playerctld.nix
    ./ripgrep.nix
    ./starship.nix
    ./stylix.nix
    ./tmate.nix
    ./tmux.nix
    ./xdg.nix
    ./yazi.nix
    ./zathura.nix
    ./zed-editor.nix
    ./zen-browser.nix
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
