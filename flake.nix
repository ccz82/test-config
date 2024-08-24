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
      username = "ccz";
      email = "chunzhen82@gmail.com";
      specialArgs = { inherit username; };
    in
    {
      nixosConfigurations = {
        chromebook = nixpkgs.lib.nixosSystem {
          inherit specialArgs;
          system = "x86_64-linux";
          modules = [
            ./hosts/chromebook
            home-manager.nixosModules.home-manager
            {
              home-manager.extraSpecialArgs = { inherit username email; };
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.users.${username} = import ./home;
            }
            stylix.nixosModules.stylix
          ];
        };
      };
    };
}
