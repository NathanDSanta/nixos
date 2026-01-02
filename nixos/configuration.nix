{
  pkgs,
  inputs,
  ...
}: {
  imports = [
    ./hardware-configuration.nix
    ./modules/boot.nix
    inputs.niri.nixosModules.niri
  ];

  hardware.graphics = {
    enable = true;
    extraPackages = with pkgs; [vpl-gpu-rt];
  };

  nix.settings.experimental-features = ["nix-command" "flakes"];

  networking.hostName = "Nathan-NixOS";
  networking.networkmanager.enable = true;

  time.timeZone = "Europe/Madrid";

  i18n.defaultLocale = "en_US.UTF-8";

  fonts = {
    packages = with pkgs; [pkgs.nerd-fonts.jetbrains-mono];
    fontconfig = {
      enable = true;
      defaultFonts = {
        monospace = ["JetBrainsMono Nerd Font"];
      };
    };
  };

  services = {
    pipewire = {
      enable = true;
      alsa.enable = true;
      pulse.enable = true;
    };

    blueman.enable = true;

    displayManager.ly.enable = true;

    libinput.enable = true;

    power-profiles-daemon.enable = true;

    upower.enable = true;

    netbird.enable = true;

    openssh = {
      enable = true;
      ports = [22];
      settings = {
        UseDns = true;
        PasswordAuthentication = true;
        PermitRootLogin = "no";
      };
    };
  };

  virtualisation.libvirtd.enable = true;
  virtualisation.virtualbox.host.enable = true;

  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-wlr
      xdg-desktop-portal-gtk
    ];
  };

  security.rtkit.enable = true;
  hardware.bluetooth.enable = true;

  users.users.NathanDSanta = {
    isNormalUser = true;
    shell = pkgs.zsh;
    extraGroups = ["networkmanager" "wheel" "libvirtd" "vboxusers"];
  };

  programs = {
    niri.enable = true;
    zsh.enable = true;

    nh = {
      enable = true;
      clean.enable = true;
      clean.extraArgs = "--keep-since 4d --keep 3";
    };
  };

  environment = {
    systemPackages = with pkgs; [
      home-manager
      vim
      xwayland-satellite
      nerd-fonts.jetbrains-mono
    ];

    variables = {
      NH_FLAKE = "/home/NathanDSanta/.nixos/nixos";
    };
  };

  system.stateVersion = "25.11"; # Did you read the comment?
}
