{config, pkgs, inputs, ...}:

{
   stylix = {
     enable = true;
     autoEnable = true;
     base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-mocha.yaml";
     fonts = {
       monospace = { 
         name = "JetBrains Mono Nerd Font";
       };
     };
   };
}
