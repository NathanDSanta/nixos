{ config,lib, pkgs, inputs, ... }:

let
  b = builtins;
  modules =
    b.map (name: ./modules/${name})
      (b.filter (name: lib.strings.hasSuffix ".nix" name)
        (b.attrNames (b.readDir ./modules)));
in
{

  imports = [
    inputs.niri.homeModules.niri
    inputs.nixvim.homeModules.nixvim
  ] ++ modules;

  home.username = "NathanDSanta";
  home.homeDirectory = "/home/NathanDSanta";

  home.stateVersion = "25.05"; # Please read the comment before changing.

  home.packages = with pkgs; [
    fzf
  ];

  home.file = {
  };

  home.sessionVariables = {
    NH_HOME_FLAKE = "/home/NathanDSanta/.nixos/home-manager/";
  };

  programs = {
    home-manager.enable = true;

    nixvim = {
      enable = true;
    };

  };



}
