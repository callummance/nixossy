_: {
  flake.nixosModules.swaywm = { pkgs, lib, ... }: {
    programs.sway.enable = true;
    environment.systemPackages = [
      pkgs.rofi-wayland
      pkgs.swaylock
    ];
    programs.waybar.enable = true;
  };
}
