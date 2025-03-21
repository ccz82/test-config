{pkgs, ...}: {
  plugins = {
    lsp = {
      enable = true;
      inlayHints = true;
      keymaps.lspBuf = {
        K = "hover";
        "<Leader>rn" = "rename";
        gD = "references";
        gd = "definition";
        gi = "implementation";
        gt = "type_definition";
      };
      servers = {
        nixd.enable = true;
        bashls.enable = true;
        clangd.enable = true;
        csharp_ls.enable = true;
        basedpyright.enable = true;
        ruff.enable = true;
        ocamllsp = {
          enable = true;
          package = pkgs.ocamlPackages.ocaml-lsp;
        };
        rust_analyzer = {
          enable = true;
          installCargo = false;
          installRustc = false;
        };
        zls.enable = true;
        ts_ls.enable = true;
        biome.enable = true;
        html.enable = true;
        cssls.enable = true;
        tailwindcss.enable = true;
        astro.enable = true;
        marksman.enable = true;
      };
    };
  };
}
