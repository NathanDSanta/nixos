{config, lib, pkgs, inputs, ...}:

let
  b = builtins;
  modules =
    b.map (name: ./nixvim/${name})
      (b.filter (name: lib.strings.hasSuffix ".nix" name)
        (b.attrNames (b.readDir ./modules)));
in
{
  imports = [

  ] ++ modules;
  programs.nixvim = {
    enable = true;
  };
}
