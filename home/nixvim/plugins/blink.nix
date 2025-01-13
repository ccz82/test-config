{lib, ...}: {
  plugins = {
    blink-cmp = {
      enable = true;
      settings = {
        keymap.preset = "super-tab";
        sources = {
          default = [
            "lsp"
            "path"
            "luasnip"
            "buffer"
            "copilot"
          ];
          providers = {
            copilot = {
              name = "copilot";
              module = "blink-cmp-copilot";
              score_offset = -100;
              async = true;
              transform_items = lib.nixvim.mkRaw ''
                function(_, items)
                  local CompletionItemKind = require("blink.cmp.types").CompletionItemKind
                  local kind_idx = #CompletionItemKind + 1
                  CompletionItemKind[kind_idx] = "Copilot"
                  for _, item in ipairs(items) do
                    item.kind = kind_idx
                  end
                  return items
                end
              '';
            };
          };
        };
        completion = {
          documentation.auto_show = true;
          menu.draw.columns = let
            a = ["label" "label_description"];
            b = lib.nixvim.listToUnkeyedAttrs ["kind_icon" "kind"] // {gap = 1;};
          in [a b];
        };
        signature.enabled = true;
        appearance.kind_icons = {
          Copilot = "";
          Text = "󰉿";
          Method = "󰊕";
          Function = "󰊕";
          Constructor = "󰒓";
          Field = "󰜢";
          Variable = "󰆦";
          Property = "󰖷";
          Class = "󱡠";
          Interface = "󱡠";
          Struct = "󱡠";
          Module = "󰅩";
          Unit = "󰪚";
          Value = "󰦨";
          Enum = "󰦨";
          EnumMember = "󰦨";
          Keyword = "󰻾";
          Constant = "󰏿";
          Snippet = "󱄽";
          Color = "󰏘";
          File = "󰈔";
          Reference = "󰬲";
          Folder = "󰉋";
          Event = "󱐋";
          Operator = "󰪚";
          TypeParameter = "󰬛";
        };
      };
    };
    friendly-snippets.enable = true;
  };
}
