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

  outputs = {...} @ inputs: let
    system = "x86_64-linux";
    pkgs = import inputs.nixpkgs {
      inherit system;
      config = {
        android_sdk.accept_license = 1;
        allowUnfree = true;
      };
    };
  in {
    nixosConfigurations = {
      "Nathan-NixPC" = inputs.nixpkgs.lib.nixosSystem {
        inherit pkgs;
        specialArgs = {inherit inputs system;};
        modules = [
          ./pc/configuration.nix
        ];
      };
      "Nathan-NixLaptop" = inputs.nixpkgs.lib.nixosSystem {
        inherit pkgs;
        specialArgs = {inherit inputs system;};
        modules = [
          ./laptop/configuration.nix
        ];
      };
    };
  };
}
