{
  description = "ccz's nixos-config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    lan-mouse.url = "github:feschber/lan-mouse";
    stylix.url = "github:danth/stylix";
    niri.url = "github:sodiboo/niri-flake";
    nixvim.url = "github:nix-community/nixvim";
    nixvim.inputs.nixpkgs.follows = "nixpkgs";
    zen-browser.url = "github:0xc000022070/zen-browser-flake";
    zen-browser.inputs.nixpkgs.follows = "nixpkgs";
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
    specialArgs = {inherit username inputs;};
  in {
    nixosConfigurations = {
      zenbook = nixpkgs.lib.nixosSystem {
        inherit specialArgs;
        system = "x86_64-linux";
        modules = [
          ./hosts/zenbook
          home-manager.nixosModules.home-manager
          {
            home-manager.extraSpecialArgs = {inherit inputs username email;};
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.${username} = import ./home;
          }
          stylix.nixosModules.stylix
          niri.nixosModules.niri
        ];
      };
ccz-desktop = nixpkgs.lib.nixosSystem {
        inherit specialArgs;
        system = "x86_64-linux";
        modules = [
          ./hosts/ccz-desktop
          home-manager.nixosModules.home-manager
          {
            home-manager.extraSpecialArgs = {inherit inputs username email;};
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.${username} = import ./home;
          }
          stylix.nixosModules.stylix
          niri.nixosModules.niri
        ];
      };
    };
  };
}
