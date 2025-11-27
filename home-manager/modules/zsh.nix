{config, pkgs, inputs, ...}:

{
    programs.zsh = {
      enable = true;
      oh-my-zsh = {
        enable = true;
	plugins = [
	  "sudo"
	  "zsh-autosuggestions"
	  "zsh-autocomplete"
	  "zsh-syntax-highlighting"
	  "fzf-tab"
	];
      };

      
      shellAliases = {
        rebuild-nix = "sudo nixos-rebuild switch --flake ~/.nixos/nixos#personal";
        rebuild-home = "home-manager switch --flake ~/.nixos/home-manager";
      };
    };

    home.packages = with pkgs; [
      zsh-autosuggestions
      zsh-autocomplete
      zsh-syntax-highlighting
      zsh-fzf-tab
    ];
}
