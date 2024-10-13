{
  plugins = {
    cmp = {
      enable = true;
      settings = {
        sources = [
          {name = "nvim_lsp";}
          {name = "luasnip";}
          {name = "copilot";}
          {name = "path";}
          {name = "buffer";}
        ];
        mapping = {
          "<C-Space>" = "cmp.mapping.complete()";
          "<C-e>" = "cmp.mapping.close()";
          "<C-b>" = "cmp.mapping.scroll_docs(-4)";
          "<C-f>" = "cmp.mapping.scroll_docs(4)";
          "<CR>" = ''
            cmp.mapping(function(fallback)
              if cmp.visible() then
                if require('luasnip').expandable() then
                  require('luasnip').expand()
                else
                  cmp.confirm({ select = true })
                end
              else
                fallback()
              end
            end)
          '';
          "<Tab>" = ''
            cmp.mapping(function(fallback)
              if cmp.visible() then
                cmp.select_next_item()
              elseif require('luasnip').locally_jumpable(1) then
                require('luasnip').jump(1)
              else
                fallback()
              end
            end, { "i", "s" })
          '';
          "<S-Tab>" = ''
            cmp.mapping(function(fallback)
              if cmp.visible() then
                cmp.select_prev_item()
              elseif require('luasnip').locally_jumpable(-1) then
                require('luasnip').jump(-1)
              else
                fallback()
              end
            end, { "i", "s" })
          '';
        };
        snippet.expand = ''
          function(args)
            require('luasnip').lsp_expand(args.body)
          end
        '';
      };
    };
    luasnip.enable = true;
    friendly-snippets.enable = true;
    lspkind = {
      enable = true;
      cmp.enable = true;
    };
  };
}
