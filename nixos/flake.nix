{
  description = "NixOS config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";

    niri = {
      url = "github:sodiboo/niri-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    elegant-grub-theme = {
      url = "github:FluffySpike8/elegant-grub";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, ... }@inputs: 
    let
      system = "x86_64-linux";
      pkgs = import inputs.nixpkgs {
        inherit system;
	config = {
	  allowUnfree = true;
	};
      };
    in
    {
      nixosConfigurations = {
        Nathan-NixOS = inputs.nixpkgs.lib.nixosSystem {
          specialArgs = {inherit inputs system;};
          modules = [
            ./configuration.nix
          ];
	};
      };

    };
}
