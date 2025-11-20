# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).

{ config, lib, pkgs, inputs, ... }:

{
  imports =
    [ 
      ./hardware-configuration.nix
      inputs.home-manager.nixosModules.default
    ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  boot.loader.grub = {
    enable = true;
    device = "nodev";
    efiSupport = true;
    extraEntries = ''
      menuentry "Arch Linux" {
        insmod ext2
        set root=(hd0,gpt6)
        linux /boot/vmlinuz-linux root=/dev/nvme0n1p6
        initrd /boot/initramfs-linux.img
      }
    ''; 
  };
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.efi.efiSysMountPoint = "/boot/efi";

  boot.blacklistedKernelModules = [ "elan_i2c" ];

  networking.hostName = "Nathan-NixOS"; 
  networking.networkmanager.enable = true; 

  time.timeZone = "Europe/Madrid";

  i18n.defaultLocale = "en_US.UTF-8";

  programs.niri = {
    enable = true;
  };
  
  services.pipewire = {
    enable = true;
    pulse.enable = true;
  };

  services.displayManager.ly.enable = true;

  services.libinput.enable = true;

  users.users.NathanDSanta = {
     isNormalUser = true;
     extraGroups = [ "NetworkManager" "wheel" ];
   };

   home-manager = {
     extraSpecialArgs = {inherit inputs;};
     users = {
	"NathanDSanta" = import ./home.nix;
     };
   };

   stylix = {
     base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-mocha.yaml";
   };

   environment.systemPackages = with pkgs; [
      neovim 
      chromium
      sleek-grub-theme
      alacritty
      foot
      git
      xdg-desktop-portal-hyprland
   ];

  

  system.stateVersion = "25.05"; # Did you read the comment?

}

