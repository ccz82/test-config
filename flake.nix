{
  description = "ccz's nixos-config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    stylix.url = "github:danth/stylix";
  };

  outputs = inputs@{ nixpkgs, home-manager, stylix, ... }:
    let
      system = "x86_64-linux";
      hostname = "nixos";
      username = "ccz";
      email = "chunzhen82@gmail.com";
    in
    {
      nixosConfigurations = {
        ${hostname} = nixpkgs.lib.nixosSystem {
          specialArgs = {
            inherit inputs system hostname username;
          };
          modules = [
            ./nixos/configuration.nix
            home-manager.nixosModules.home-manager
            {
              home-manager.extraSpecialArgs = { inherit username email; };
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.users.${username} = import ./home-manager/home.nix;
            }
            stylix.nixosModules.stylix
          ];
        };
      };
    };
}
