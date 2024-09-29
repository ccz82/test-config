{ pkgs, ... }:

{
  programs.neovim.extraPackages = with pkgs; [
    lua-language-server
    nixd
    clang-tools
    basedpyright
    csharp-ls
    ocamlPackages.ocaml-lsp
    rust-analyzer
    zls
    typescript-language-server
    vscode-langservers-extracted
    tailwindcss-language-server
    marksman
  ];
}
