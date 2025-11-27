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

  home.packages = [
    pkgs.hello
    pkgs.fzf
    pkgs.base16-schemes
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
