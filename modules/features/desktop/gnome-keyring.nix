_: {
  flake.nixosModules.gnomeKeyring = { pkgs, lib, ... }: {
    services.gnome.gnome-keyring = {
      enable = true;
    };

    security.pam.services.ly.enableGnomeKeyring = true;
  };
}
