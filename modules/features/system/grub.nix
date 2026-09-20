_: {
  flake.nixosModules.grub = { pkgs, lib, ... }: {
    boot.loader = {
      grub = {
        enable = true;
        device = "nodev";
        efiSupport = true;
        memtest86.enable = true;
      };
      efi = {
        canTouchEfiVariables = true;
      };
    };
  };
}
