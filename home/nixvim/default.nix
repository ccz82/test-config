{inputs, ...}: {
  stylix.targets.nixvim.enable = false;

  imports = [
    inputs.nixvim.homeManagerModules.nixvim
  ];

  programs.nixvim = {
    enable = true;
    defaultEditor = true;
    imports = [
      ./config/globals.nix
      ./config/opts.nix
      ./config/colorschemes.nix
      ./config/clipboard.nix
      ./plugins/lsp.nix
      ./plugins/cmp.nix
      ./plugins/copilot.nix
      ./plugins/conform.nix
      ./plugins/treesitter.nix
      ./plugins/telescope.nix
      ./plugins/lualine.nix
      ./plugins/oil.nix
      ./plugins/leap.nix
      ./plugins/ibl.nix
      ./plugins/autopairs.nix
      ./plugins/todo-comments.nix
      ./plugins/web-devicons.nix
    ];
  };
}
