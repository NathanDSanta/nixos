# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).

{ config, lib, pkgs, inputs, ... }:

{
  imports =
    [ 
      ./hardware-configuration.nix
      ./modules/boot.nix
      inputs.niri.nixosModules.niri
    ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  networking.hostName = "Nathan-NixOS"; 
  networking.networkmanager.enable = true; 

  time.timeZone = "Europe/Madrid";

  i18n.defaultLocale = "en_US.UTF-8";

  fonts.packages = [ pkgs.nerd-fonts.jetbrains-mono ];

  services.pipewire = {
    enable = true;
    pulse.enable = true;
  };

  services.displayManager.ly.enable = true;

  services.libinput.enable = true;

  users.users.NathanDSanta = {
     isNormalUser = true;
     shell = pkgs.zsh;
     extraGroups = [ "networkmanager" "wheel" ];
  };

  programs = {
    niri.enable = true;
    zsh.enable = true;
  };

   environment.systemPackages = with pkgs; [
      home-manager
      vim
      chromium
      foot
      mako
      waybar
      swaybg
      swayidle
      git
      pavucontrol
      xdg-desktop-portal-hyprland
   ];

  

  system.stateVersion = "25.05"; # Did you read the comment?

}

