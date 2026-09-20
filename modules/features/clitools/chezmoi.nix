_: {
  flake.nixosModules.chezmoi = { pkgs, lib, ... }: {
    environment.systemPackages = [
      pkgs.chezmoi
    ];
  };
}
