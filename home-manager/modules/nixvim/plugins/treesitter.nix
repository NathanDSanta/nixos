{pkgs, ...}: {
  programs.nixvim = {
    plugins.treesitter = {
      enable = true;
      autoLoad = true;
      folding = true;
      settings = {
        highlight = {
          enable = true;
          additional_vim_reger_highlighting = false;
        };
      };

      grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
        bash
        json
        lua
        make
        markdown
        nix
        regex
        toml
        vim
        vimdoc
        xml
        yaml
        java
        c
        cpp
        javascript
        typescript
      ];
    };
  };
}
