{pkgs, ...}: {
  extraPackages = with pkgs; [
    alejandra
    shfmt
    # prettier
  ];

  plugins = {
    conform-nvim = {
      enable = true;
      settings = {
        formatters_by_ft = {
          nix = ["alejandra"];
          sh = ["shfmt"];
          html = ["prettier"];
          css = ["prettier"];
          javascript = ["prettier"];
          javascriptreact = ["prettier"];
          typescript = ["prettier"];
          typescriptreact = ["prettier"];
          markdown = ["prettier"];
          json = ["prettier"];
          jsonc = ["prettier"];
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
