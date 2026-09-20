_: {
  flake.nixosModules.plymouth = { pkgs, lib, ... }: {
    boot = {
      plymouth = {
        enable = true;
        theme = "glow";

      };
    };
  };
}
