{ config, pkgs, inputs, ... }:

{

  imports = [
    ./modules/niri.nix	
    ./modules/term.nix
    ./modules/themes.nix
    inputs.niri.homeModules.niri
    inputs.nixvim.homeModules.nixvim
  ];

  home.username = "NathanDSanta";
  home.homeDirectory = "/home/NathanDSanta";

  home.stateVersion = "25.05"; # Please read the comment before changing.

  home.packages = with pkgs; [
    fzf
    base16-schemes
    nerd-fonts.jetbrains-mono
  ];

  home.file = {
  };

  home.sessionVariables = {
  };

  programs = {
    home-manager.enable = true;

    nixvim = {
      enable = true;
    };

  };



}
