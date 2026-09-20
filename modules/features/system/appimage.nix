_: {
  flake.nixosModules.appimage = { pkgs, lib, ... }: {
    programs.appimage = {
      enable = true;
      binfmt = true;
    };

    environment.systemPackages = [
      pkgs.gearlever
      pkgs.appimage-run
    ];
  };
}
