_: {
  flake.nixosModules.flatpak = { pkgs, lib, ... }: {
    services.flatpak.remotes = lib.mkDefault [
      {
        name = "GeForceNow";
        location = "https://international.download.nvidia.com/GFNLinux/flatpak/geforcenow_repo";
      }
    ];
  };
}
