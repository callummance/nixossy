_: {
  flake.nixosModules.gnome-keyring = { pkgs, lib, ... }: {
    services.gnome.gnome-keyring = {
      enable = true;
    };

    security.pam.services.ly.enableGnomeKeyring = true;
  };
}
