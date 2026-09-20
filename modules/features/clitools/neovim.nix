_: {
  flake.nixosModules.neovim = { pkgs, lib, ... }: {
    programs.neovim = {
      enable = true;
    };
  };
}
