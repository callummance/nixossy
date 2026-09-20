_: {
  flake.nixosModules.networkmanager = { pkgs, lib, ... }: {
    networking.networkmanager = {
      enable = true;
      wifi.powersave = true;
    };
  };
}
