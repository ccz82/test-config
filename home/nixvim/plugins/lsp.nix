{
  plugins = {
    lsp = {
      enable = true;
      keymaps.lspBuf = {
        K = "hover";
        "<Leader>ca" = "code_action";
        "<Leader>rn" = "rename";
        gD = "references";
        gd = "definition";
        gi = "implementation";
        gt = "type_definition";
      };
      servers = {
        nil_ls.enable = true;
        nixd.enable = true;
        bashls.enable = true;
        clangd.enable = true;
        basedpyright.enable = true;
        ruff.enable = true;
        ocamllsp.enable = true;
        rust_analyzer = {
          enable = true;
          installCargo = false;
          installRustc = false;
        };
        zls.enable = true;
        lua_ls.enable = true;
        ts_ls.enable = true;
        biome.enable = true;
        html.enable = true;
        cssls.enable = true;
        tailwindcss.enable = true;
        astro.enable = true;
        marksman.enable = true;
        tinymist = {
          enable = true;
          settings = {
            formatterMode = "typstyle";
          };
        };
      };
    };
  };
}
