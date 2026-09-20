_: {
  flake.nixosModules.console = { pkgs, lib, ... }: {
    console = {
      enable = true;
      font = "Lat2-Terminus32";
      earlySetup = true;
      keyMap = "uk";
    };
  };
}
