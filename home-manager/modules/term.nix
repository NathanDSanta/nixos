{config, pkgs, inputs, ...}:

{

    programs = {
      foot = {
        enable = true;
	settings = {
	  main = {
	    term = "xterm-256color";
	  };
	};
      };

      zsh = {
        enable = true;
        enableCompletion = true;
        autosuggestion.enable = true;
        syntaxHighlighting.enable = true;
        oh-my-zsh = {
          enable = true;
	  plugins = [
	    "sudo"
	  ];
        };

      
        shellAliases = {
          rebuild-nix = "sudo nixos-rebuild switch --flake ~/.nixos/nixos#personal";
          rebuild-home = "home-manager switch --flake ~/.nixos/home-manager";
        };
      };
    
      oh-my-posh = {
        enable = true;
	enableZshIntegration = true;
      };

      fzf = {
        enable = true;
	enableZshIntegration = true;
      };

      zoxide = {
        enable = true;
	enableZshIntegration = true;
      };

      eza = {
        enable = true;
	enableZshIntegration = true;
	git = true;
	icons = "auto";
	colors = "auto";
      };
    };

}
