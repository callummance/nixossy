_: {
  flake.nixosModules.zsh = { pkgs, lib, ... }: {
    programs.zsh = {
      enable = true;
    };
  };
}
