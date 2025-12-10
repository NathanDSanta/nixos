{
  lib,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    stylua
    black
    isort
    nodePackages.prettier
    alejandra
  ];

  programs.nixvim.plugins.conform-nvim = {
    enable = true;

    settings = {
      formatters_by_ft = {
        lua = ["stylua"];
        nix = ["alejandra"];
        python = ["black" "isort"];
        javascript = ["prettier"];
        typescript = ["prettier"];
      };
      format_on_save = {
        timeout_ms = 200;
        lsp_fallback = true;
      };
      notify_on_error = false;
      formatters = {
        stylua = {
          command = lib.getExe pkgs.stylua;
        };
        alejandra = {
          command = lib.getExe pkgs.alejandra;
        };
        black = {
          command = lib.getExe pkgs.black;
        };
        isort = {
          command = lib.getExe pkgs.isort;
        };
        prettier = {
          command = lib.getExe pkgs.prettier;
        };
      };
    };
  };
}
