{ config, pkgs, inputs, ... }:

{

  imports = [
    ./modules
    inputs.niri.homeModules.niri
    inputs.nixvim.homeModules.nixvim
  ];

  home.username = "NathanDSanta";
  home.homeDirectory = "/home/NathanDSanta";

  home.stateVersion = "25.05"; # Please read the comment before changing.

  home.packages = with pkgs; [
    fzf
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
