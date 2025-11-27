{config,lib, pkgs, inputs, ...}:

{
  boot.loader.grub = {
    enable = true;
    device = "nodev";
    theme = pkgs.sleek-grub-theme.override {
      withBanner = "NathanDSanta";
      withStyle = "dark";
    };
    efiSupport = true;
    extraEntries = ''
      menuentry "Arch Linux" {
        insmod ext2
        set root=(hd0,gpt6)
        linux /boot/vmlinuz-linux root=/dev/nvme0n1p6
        initrd /boot/initramfs-linux.img
      }
    ''; 
  };
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.efi.efiSysMountPoint = "/boot/efi";

  boot.blacklistedKernelModules = [ "elan_i2c" ];
}
