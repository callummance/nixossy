_: {
  flake.nixosModules.cliutils = { pkgs, lib, ... }: {
    programs = {
      bat.enable = true;
      git.enable = true;
      vim.enable = true;
      nano.enable = true;
    };
    environment.systemPackages = with pkgs; [
      hyfetch
      fastfetch
      htop
      gotop
    ];
  };
}
