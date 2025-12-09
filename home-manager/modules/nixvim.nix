{config, lib, pkgs, inputs, ...}:

let
  b = builtins;
  config =
    b.map (name: ./nixvim/config/${name})
      (b.filter (name: lib.strings.hasSuffix ".nix" name)
        (b.attrNames (b.readDir ./nixvim/config)));
  plugins =
    b.map (name: ./nixvim/plugins/${name})
      (b.filter (name: lib.strings.hasSuffix ".nix" name)
        (b.attrNames (b.readDir ./nixvim/plugins)));
in
{
  imports = [

  ] ++ config ++ plugins;
  programs.nixvim = {
    enable = true;
  };
}
