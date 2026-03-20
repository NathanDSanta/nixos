{...}: {
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "NathanDSanta";
        email = "natan.d.santa@gmail.com";
      };
      core = {
        editor = "nvim";
      };
      init.defaultBranch = "main";
    };
  };
}
