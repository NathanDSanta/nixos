{...}: {
  programs.nixvim = {
    lsp.servers = {
      clangd.enable = true;
      emmet_ls.enable = true;
      ts_ls.enable = true;
      jdtls.enable = true;
      qmlls.enable = true;
      cssls.enable = true;
      lua_ls.enable = true;
      nixd = {
        enable = true;
        config = {
          settings = {
            nixd = {
              options = {
                nixos = {
                  expr = "(builtins.getFlake (builtins.toString ~/.nixos/nixos)).nixosConfigurations.Nathan-NixOS.options";
                };
                home-manager = {
                  expr = "(builtins.getFlake (builtins.toString ~/.nixos/home-manager)).homeConfigurations.NathanDSanta.options";
                };
              };
            };
          };
        };
      };
    };

    plugins = {
      lspconfig.enable = true;
      lazydev.enable = true;
      friendly-snippets.enable = true;
      luasnip = {
        enable = true;
        fromVscode = [{}];
      };
      blink-cmp = {
        enable = true;
        settings = {
          appearance = {
            nerd_font_variant = "mono";
          };
          completion = {
            documentation = {
              auto_show = true;
              auto_show_delay_ms = 250;
            };
            trigger.show_on_backspace_in_keyword = true;
            ghost_text.enabled = true;
          };
          sources = {
            default = [
              "lsp"
              "path"
              "snippets"
              "lazydev"
              "buffer"
            ];
            providers = {
              lazydev = {
                module = "lazydev.integrations.blink";
                score_offset = 4;
              };
            };
          };
          snippets.preset = "luasnip";
          fuzzy.implementation = "lua";
          signature.enabled = true;
          keymap = {
            preset = "none";
            "<Up>" = ["select_prev" "fallback"];
            "<Down>" = ["select_next" "fallback"];
            "<CR>" = ["accept" "fallback"];
          };
          cmdline = {
            enabled = true;
            keymap = {
              preset = "cmdline";
              "<Up>" = ["select_prev" "fallback"];
              "<Down>" = ["select_next" "fallback"];
              "<CR>" = ["accept_and_enter" "fallback"];
            };
          };
        };
      };
      fidget = {
        enable = true;
        settings.notification.window.winblend = 0;
      };
    };
  };
}
