_: {
  flake.nixosModules.niriwm = { pkgs, lib, ... }: {
    programs.niri.enable = true;
    environment.systemPackages = [
      pkgs.rofi-wayland
    ];
    programs.waybar.enable = true;
    programs.hyprlock.enable = true;
  };
}
