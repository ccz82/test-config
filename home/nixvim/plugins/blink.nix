{pkgs, ...}: {
  extraPlugins = with pkgs.vimPlugins; [ethersync];
  # extraConfigLua = ''require("colorful-menu").setup()'';
  plugins = {
    blink-cmp = {
      enable = true;
      settings = {
        keymap.preset = "super-tab";
        signature.enabled = true;
      };
    };
    friendly-snippets.enable = true;
  };
}
#
# {
#   pkgs,
#   lib,
#   ...
# }: {
#   plugins = {
#     blink-cmp = {
#       enable = true;
#       settings = {
#         keymap.preset = "super-tab";
#         signature.enabled = true;
#         completion.menu.draw = {
#           # treesitter = ["lsp"];
#           columns = let
#             label = lib.nixvim.listToUnkeyedAttrs ["label"] // {gap = 1;};
#           in [["kind_icon"] label];
#           components = {
#             kind_icon = {
#               text = lib.nixvim.mkRaw ''
#                 function(ctx)
#                   local lspkind = require("lspkind")
#                   local icon = ctx.kind_icon
#                   if vim.tbl_contains({ "Path" }, ctx.source_name) then
#                     local dev_icon, _ = require("nvim-web-devicons").get_icon(ctx.label)
#                     if dev_icon then
#                       icon = dev_icon
#                     end
#                   else
#                     icon = require("lspkind").symbolic(ctx.kind, { mode = "symbol" })
#                   end
#                   return icon .. ctx.icon_gap
#                 end
#               '';
#               highlight = lib.nixvim.mkRaw ''
#                 function(ctx)
#                   local hl = ctx.kind_hl
#                   if vim.tbl_contains({ "Path" }, ctx.source_name) then
#                     local dev_icon, dev_hl = require("nvim-web-devicons").get_icon(ctx.label)
#                     if dev_icon then
#                       hl = dev_hl
#                     end
#                   end
#                   return hl
#                 end
#               '';
#             };
#             label = {
#               text = lib.nixvim.mkRaw "function(ctx) return require('colorful-menu').blink_components_text(ctx) end";
#               highlight = lib.nixvim.mkRaw "function(ctx) return require('colorful-menu').blink_components_highlight(ctx) end";
#             };
#           };
#         };
#       };
#     };
#     lspkind.enable = true;
#     friendly-snippets.enable = true;
#   };
#
#   extraPlugins = with pkgs.vimPlugins; [colorful-menu-nvim];
#   extraConfigLua = ''require("colorful-menu").setup()'';
# }

