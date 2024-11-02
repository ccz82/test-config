{
  description = "ccz's nixos-config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    nixvim.url = "github:nix-community/nixvim";
    nixvim.inputs.nixpkgs.follows = "nixpkgs";
    stylix.url = "github:danth/stylix";
    hyprpanel.url = "github:Jas-SinghFSU/HyprPanel";
    zen-browser.url = "github:MarceColl/zen-browser-flake";
  };

  outputs = inputs @ {
    nixpkgs,
    home-manager,
    stylix,
    hyprpanel,
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
          {nixpkgs.overlays = [hyprpanel.overlay];}
        ];
      };
    };
  };
}
