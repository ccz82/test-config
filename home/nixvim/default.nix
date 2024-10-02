{
  inputs,
  pkgs,
  ...
}: {
  stylix.targets.nixvim.enable = false;

  imports = [
    inputs.nixvim.homeManagerModules.nixvim
  ];

  programs.nixvim = {
    enable = true;
    defaultEditor = true;

    globals = {
      mapleader = " ";
      maplocalleader = " ";
      have_nerd_font = true;
    };

    colorschemes.gruvbox = {
      enable = true;
      settings.transparent_mode = true;
    };

    clipboard = {
      register = "unnamedplus";
      providers.wl-copy.enable = true;
    };

    opts = {
      mouse = "";
      swapfile = false;
      wrap = false;
      showmode = false;
      number = true;
      cursorline = true;
      signcolumn = "yes";
      expandtab = true;
      tabstop = 2;
      softtabstop = 2;
      shiftwidth = 2;
      autoindent = true;
      smartindent = true;
    };

    extraPackages = with pkgs; [
      ripgrep
      fd
    ];

    imports = [
      ./plugins/lsp.nix
      ./plugins/cmp.nix
      ./plugins/conform.nix
      ./plugins/treesitter.nix
      ./plugins/telescope.nix
      ./plugins/oil.nix
      ./plugins/leap.nix
      ./plugins/ibl.nix
      ./plugins/autopairs.nix
      ./plugins/web-devicons.nix
    ];
  };
}
