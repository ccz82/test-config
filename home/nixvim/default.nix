{inputs, ...}: {
  imports = [inputs.nixvim.homeManagerModules.nixvim];

  stylix.targets.nixvim.enable = false;

  programs.nixvim = {
    enable = true;
    defaultEditor = true;
    imports = [
      ./config/globals.nix
      ./config/opts.nix
      ./config/colorschemes.nix
      ./config/clipboard.nix
      ./plugins/autopairs.nix
      ./plugins/blink.nix
      ./plugins/conform.nix
      ./plugins/gitsigns.nix
      ./plugins/ibl.nix
      ./plugins/leap.nix
      ./plugins/lsp.nix
      ./plugins/lualine.nix
      ./plugins/oil.nix
      ./plugins/surround.nix
      ./plugins/telescope.nix
      ./plugins/todo-comments.nix
      ./plugins/treesitter.nix
      ./plugins/web-devicons.nix
      ./plugins/typst-preview.nix
      ./plugins/hlchunk.nix
    ];
  };
}
