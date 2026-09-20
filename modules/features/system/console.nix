_: {
  flake.nixosModules.console = { pkgs, lib, ... }: {
    console = {
      enable = true;
      font = "Lat2-Terminus16";
      earlySetup = true;
      keyMap = "uk";
      useXkbConfig = true;
    };
  };
}
