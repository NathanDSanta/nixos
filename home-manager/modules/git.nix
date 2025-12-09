{config, pkgs, inputs, ...}:

{
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "NathanDSanta";
	mail = "natan.d.santa@gmail.com";
      };
    };
  };
}
