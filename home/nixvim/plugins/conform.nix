{pkgs, ...}: {
  extraPackages = with pkgs; [
    alejandra
    shfmt
    biome
    nodePackages.prettier
  ];

  plugins = {
    conform-nvim = {
      enable = true;
      settings = {
        formatters = {
          biome = {
            require_cwd = true;
          };
        };
        formatters_by_ft = {
          nix = ["alejandra"];
          sh = ["shfmt"];
          # TODO: Change to biome when it is ready
          html = ["prettier"];
          markdown = ["prettier"];
        };
      };
    };
  };

  keymaps = [
    {
      key = "<Leader>F";
      action = "<Cmd>lua require('conform').format({ async = true, lsp_fallback = true })<CR>";
      options = {
        silent = true;
        desc = "Format buffer";
      };
    }
  ];
}
