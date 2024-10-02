{pkgs, ...}: {
  extraPackages = with pkgs; [
    alejandra
    shfmt
    prettierd
  ];

  plugins = {
    conform-nvim = {
      enable = true;
      settings = {
        formatters_by_ft = {
          nix = ["alejandra"];
          sh = ["shfmt"];
          html = ["prettierd"];
          css = ["prettierd"];
          javascript = ["prettierd"];
          javascriptreact = ["prettierd"];
          typescript = ["prettierd"];
          typescriptreact = ["prettierd"];
          markdown = ["prettierd"];
          json = ["prettierd"];
          jsonc = ["prettierd"];
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
