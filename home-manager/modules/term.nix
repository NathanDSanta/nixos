{pkgs, ...}: {
  home.packages = with pkgs; [
    fzf
  ];

  programs = {
    kitty = {
      enable = true;
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
        # zoxide
        cd = "z";

        # git
        ga = "git add";
        gc = "git commit";
        gpl = "git pull";
        gp = "git push";
      };
    };

    oh-my-posh = {
      enable = true;
      enableZshIntegration = true;
      settings = {
        "$schema" = "https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/schema.json";
        version = 3;
        blocks = [
          {
            newline = true;
            type = "prompt";
            alignment = "left";
            segments = [
              {
                type = "os";
                style = "plain";
                background = "transparent";
                foreground = "white";
              }
              {
                type = "path";
                style = "plain";
                foreground = "cyan";
                background = "transparent";
                template = " {{ .Path }} ";
                properties = {
                  style = "full";
                };
              }
              {
                type = "nix-shell";
                style = "plain";
                foreground = "yellow";
                background = "transparent";
                template = "{{ if ne .Type \"unknown\" }}{{ .Type }}{{ end }}";
              }
              {
                type = "git";
                style = "plain";
                foreground = "white";
                background = "transparent";
                template = " on";
              }
              {
                type = "git";
                style = "plain";
                background = "transparent";
                foreground = "green";
              }
            ];
          }
          {
            type = "prompt";
            alignment = "right";
            overflow = "hide";
            segments = [
              {
                type = "text";
                style = "plain";
                background = "transparent";
                foreground = "white";
                template = "took ";
              }
              {
                type = "executiontime";
                style = "plain";
                background = "transparent";
                foreground = "blue";
                template = "{{ .FormattedMs }}";
                properties = {
                  style = "austin";
                  always_enabled = true;
                };
              }
              {
                type = "text";
                style = "plain";
                background = "transparent";
                foreground = "white";
                template = " at ";
              }
              {
                type = "time";
                style = "plain";
                background = "transparent";
                foreground = "blue";
                template = "{{ .CurrentDate | date .Format }}";
                properties = {
                  time_format = "15:04";
                };
              }
            ];
          }
          {
            newline = true;
            type = "prompt";
            alignment = "left";
            segments = [
              {
                type = "text";
                style = "plain";
                foreground = "purple";
                template = "  ";
              }
            ];
          }
        ];
        secondary_prompt = {
          background = "transparent";
          foreground = "blue";
          template = "  ";
        };
        transient_prompt = {
          background = "transparent";
          foreground = "purple";
          template = "  ";
        };
        valid_line = {
          background = "transparent";
          foreground = "green";
          template = "  ";
        };
        error_line = {
          background = "transparent";
          foreground = "red";
          template = "  ";
        };
      };
    };
  };
}
