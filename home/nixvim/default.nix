{ ... }:

{
  imports = [
    ./options.nix
  ];

  programs.nixvim = {
    enable = true;
    defaultEditor = true;

    globals = {
      mapleader = " ";
      maplocalleader = " ";
      have_nerd_font = true;
    };

    colorschemes.gruvbox.enable = true;
  };
}
