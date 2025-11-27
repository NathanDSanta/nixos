{ config, pkgs, inputs, ... }:

{

  imports = [
    ./modules/niri.nix	
    ./modules/term.nix
    ./modules/themes.nix
    inputs.niri.homeModules.niri
    inputs.nixvim.homeModules.nixvim
    inputs.stylix.homeModules.stylix
  ];

  home.username = "NathanDSanta";
  home.homeDirectory = "/home/NathanDSanta";

  home.stateVersion = "25.05"; # Please read the comment before changing.

  home.packages = [
    pkgs.hello
    pkgs.fzf
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
