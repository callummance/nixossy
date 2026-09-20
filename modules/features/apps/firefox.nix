_: {
  flake.nixosModules.firefox = { pkgs, lib, ... }: {
    programs.firefox = {
      enable = true;
    };
  };
}
