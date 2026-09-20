_: {
  flake.nixosModules.gnome = { pkgs, lib, ... }: {
    services.desktopManager.gnome.enable = true;
  };
}
