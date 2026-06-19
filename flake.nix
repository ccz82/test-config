{
  description = "ccz's nixos-config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    lan-mouse.url = "github:feschber/lan-mouse";
    # stylix.url = "github:nix-community/stylix/pull/2337/head";
    stylix.url = "github:nix-community/stylix";
    niri.url = "github:epireyn/niri-flake";
    niri.inputs.nixpkgs.follows = "nixpkgs";
    nixvim.url = "github:nix-community/nixvim";
    nixvim.inputs.nixpkgs.follows = "nixpkgs";
    zen-browser.url = "github:0xc000022070/zen-browser-flake";
  };

  outputs = inputs @ {
    nixpkgs,
    home-manager,
    stylix,
    niri,
    ...
  }: let
    username = "ccz";
    email = "chunzhen82@gmail.com";
    mkHost = hostname:
      nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = {inherit username inputs hostname;};
        modules = [
          ./hosts/${hostname}
          home-manager.nixosModules.home-manager
          {
            home-manager.extraSpecialArgs = {inherit inputs username email hostname;};
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.${username} = import ./home;
          }
          stylix.nixosModules.stylix
          niri.nixosModules.niri
        ];
      };
  in {
    nixosConfigurations = {
      ccz-desktop = mkHost "ccz-desktop";
      zenbook = mkHost "zenbook";
    };
  };
}
