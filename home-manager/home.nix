{ config, pkgs, inputs, ... }:

let
  actions = config.lib.niri.actions;
in
{

  imports = [
    ./apps/niri.nix	
  ];

  home.username = "NathanDSanta";
  home.homeDirectory = "/home/NathanDSanta";

  home.stateVersion = "25.05"; # Please read the comment before changing.

  home.packages = [
    pkgs.hello
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

    zsh = {
      enable = true;
      enableCompletion = true;
      autosuggestion.enable = true;
      syntaxHighlighting.enable = true;
    };
  };

}
