_: {
  flake.nixosModules.networkManager = { pkgs, lib, ... }: {
    networking.networkmanager = {
      enable = true;
      wifi.powersave = true;
    };
  };
}
