{lib, ...}: let
  columnB = lib.nixvim.listToUnkeyedAttrs ["kind_icon" "kind"] // {gap = 1;};
in {
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
          copilot = {
            enabled = true;
            module = "blink-cmp-copilot";
            name = "copilot";
            score_offset = -100;
            async = true;
          };
        };
        completion.menu.draw.columns = [["label" "label_description"] columnB];
      };
    };
    friendly-snippets.enable = true;
  };
}
