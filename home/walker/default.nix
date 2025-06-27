{
  pkgs,
  inputs,
  ...
}: {
  imports = [inputs.walker.homeManagerModules.default];

  home.packages = [
    inputs.bzmenu.packages.${pkgs.system}.default
  ];

  programs.walker = {
    enable = true;
    runAsService = true;
    config = {
      search.placeholder = "start typing...";
      websearch.prefix = "?";
      switcher.prefix = "/";
    };
    # style = builtins.readFile ./style.css;
  };
}
