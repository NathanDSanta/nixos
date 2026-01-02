{
  lib,
  pkgs,
  inputs,
  ...
}: let
  theme = inputs.elegant-grub-theme.packages.${pkgs.system}.elegant-grub-theme {
    config = {
      variant = "window";
      side = "left";
      color = "dark";
      resolution = "1080p";
      background = "mojave";
      logo = false;
      info = false;
    };
  };
in {
  boot = {
    kernelModules = ["kvm-intel"];
    loader = {
      grub = {
        enable = true;
        device = "nodev";
        useOSProber = true;
        theme = lib.mkForce "${theme}/theme"; # Force so stylix does not try to overwrite
        gfxmodeEfi = "1920x1080";
        efiSupport = true;
        extraGrubInstallArgs = ["--bootloader-id=NixOS"];
      };
      efi = {
        canTouchEfiVariables = true;
        efiSysMountPoint = "/boot/efi";
      };
    };

    plymouth = {
      enable = true;
      themePackages = [
        (pkgs.adi1090x-plymouth-themes.override {
          selected_themes = ["black_hud" "circle_hud" "connect" "cuts_alt" "hexagon_hud" "splash"];
        })
      ];
      theme = "splash";
    };
  };
}
