_: {
  flake.nixosModules.sheldon = { pkgs, lib, ... }: {
    environment.systemPackages = [
      pkgs.sheldon
    ];
  };
}
