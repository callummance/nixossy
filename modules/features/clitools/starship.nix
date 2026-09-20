_: {
  flake.nixosModules.starship = { pkgs, lib, ... }: {
    programs.starship = {
      enable = true;
    };
  };
}
