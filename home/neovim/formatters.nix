{ pkgs, ... }:

{
  programs.neovim.extraPackages = with pkgs; [
    shfmt
    stylua
    black
    nodePackages.prettier
    ocamlPackages.ocamlformat
  ];
}
