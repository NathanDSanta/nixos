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
  boot.loader.grub = {
    enable = true;
    device = "nodev";
    useOSProber = true;
    theme = lib.mkForce "${theme}/theme"; # Force so stylix does not try to overwrite
    gfxmodeEfi = "1920x1080";
    efiSupport = true;
    extraGrubInstallArgs = ["--bootloader-id=NixOS"];
    extraEntries = ''
      menuentry "Fedora (Bazzite)" --class fedora {
        insmod part_gpt
        insmod fat
        search --no-floppy --fs-uuid --set=root E6BE-FCF0
        chainloader /EFI/fedora/grubx64.efi
      }
    '';
  };

  boot.loader.efi = {
    canTouchEfiVariables = true;
    efiSysMountPoint = "/boot/efi";
  };

  boot.plymouth = {
    enable = true;
    themePackages = [
      (pkgs.adi1090x-plymouth-themes.override {
        selected_themes = ["black_hud" "circle_hud" "connect" "cuts_alt" "hexagon_hud" "splash"];
      })
    ];
    theme = "splash";
  };
  boot.blacklistedKernelModules = ["elan_i2c"];
}
