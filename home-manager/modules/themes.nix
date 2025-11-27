{config, pkgs, inputs, ...}:

{
   gtk = {
     enable = true;
     theme = {
       name = "Catppuccin-mocha";
       package = pkgs.catppuccin-gtk override{
         variant = "mocha";
	 accents = "mauve";
       };
     };
   };  

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
