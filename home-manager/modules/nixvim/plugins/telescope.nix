{pkgs, ...}: {
  home.packages = with pkgs; [
    ripgrep
  ];
  programs.nixvim.plugins = {
    web-devicons.enable = true;
    telescope = {
      enable = true;
      extensions = {
        fzf-native.enable = true;
        ui-select.enable = true;
        zoxide.enable = true;
      };
    };
  };
}
