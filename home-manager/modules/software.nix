{pkgs, ...}: {
  nixpkgs.overlays = [
    (import ./../overlays/android-studio-otter3.nix)
  ];

  home.packages = with pkgs; [
    jetbrains.idea-ultimate
    jetbrains.datagrip
    temurin-bin-21
  ];
}
