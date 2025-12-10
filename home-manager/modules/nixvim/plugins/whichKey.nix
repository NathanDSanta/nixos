{...}: {
  programs.nixvim = {
    plugins.which-key = {
      enable = true;

      settings = {
        delay = 0;
        icons = {
          mappings = true;
        };

        # Group specifications
        registrations = [
          {
            key = "<leader>l";
            group = "[L]sp";
          }
          {
            key = "<leader>t";
            group = "[T]elescope";
          }
          {
            key = "<leader>o";
            group = "[O]il";
          }
        ];
      };
    };
    # Keymaps
    keymaps = [
      {
        mode = "n";
        key = "<leader>?";
        action = "<cmd> lua require(\"which-key\").show({ global = true, preset = \"modern\" })<CR>";
        options.desc = "Keymaps";
      }
    ];
  };
}
