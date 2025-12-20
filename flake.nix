{
  description = "My nix based configurations";
  inputs = {
    nixpkgs = {
      url = "github:nixos/nixpkgs/nixos-unstable";
    };
    nix-darwin = {
      url = "github:nix-darwin/nix-darwin/master";
      inputs = {
        nixpkgs = {
          follows = "nixpkgs";
        };
      };
    };
    nix-homebrew = {
      url = "github:zhaofengli/nix-homebrew";
    };
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs = {
        nixpkgs = {
          follows = "nixpkgs";
        };
      };
    };
  };
  outputs =
    inputs@{
      self,
      nixpkgs,
      nix-darwin,
      nix-homebrew,
      home-manager,
      ...
    }:
    let
      username = "cya";
      darwinHost = "m4pro";
      specialArgs = inputs // {
        inherit username;
      };
    in
    {
      darwinConfigurations = {
        "${darwinHost}" = nix-darwin.lib.darwinSystem {
          system = "aarch64-darwin";
          specialArgs = specialArgs;
          modules = [
            nix-homebrew.darwinModules.nix-homebrew
            ./darwin/default.nix
          ];
        };
      };
      homeConfigurations = {
        "${darwinHost}@${username}" = home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages.aarch64-darwin;
          extraSpecialArgs = specialArgs;
          modules = [ ./home-manager/home.nix ];
        };
      };
      devShells = {
        aarch64-darwin = {
          python = import ./shells/python.nix { pkgs = nixpkgs.legacyPackages.aarch64-darwin; };
          r = import ./shells/r.nix { pkgs = nixpkgs.legacyPackages.aarch64-darwin; };
        };
      };
    };
}
