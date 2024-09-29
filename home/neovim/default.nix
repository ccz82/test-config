{ pkgs, config, ... }:

{
  imports = [
    ./lsp.nix
    ./formatters.nix
  ];

  programs.neovim = {
    enable = true;
    defaultEditor = true;
    extraPackages = with pkgs; [
      wl-clipboard
      ripgrep
      fd
    ];
  };

  xdg.configFile = {
    "nvim" = {
      source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/nixos-config/home/neovim/nvim";
      recursive = true;
    };
  };
}
