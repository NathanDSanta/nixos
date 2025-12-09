{config, pkgs, inputs, ...}:

{
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "NathanDSanta";
	email = "natan.d.santa@gmail.com";
      };
      init.defaultBranch = "main";
    };
  };
}
