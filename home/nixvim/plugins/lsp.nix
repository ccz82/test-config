{
  plugins = {
    lsp = {
      enable = true;
      servers = {
        nixd.enable = true;
        bashls.enable = true;
        clangd.enable = true;
        csharp-ls.enable = true;
        basedpyright.enable = true;
        ruff.enable = true;
        ocamllsp.enable = true;
        rust-analyzer = {
          enable = true;
          installCargo = false;
          installRustc = false;
        };
        zls.enable = true;
        ts-ls.enable = true;
        eslint.enable = true;
        html.enable = true;
        cssls.enable = true;
        tailwindcss.enable = true;
        astro.enable = true;
      };
    };
  };
}
