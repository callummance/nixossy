{ self, inputs, ... }: {
  flake.nixosConfigurations.eblana = inputs.nixpkgs.lib.nixosSystem {
    modules = [
      self.nixosModules.eblana-configuration

      inputs.nix-flatpak.nixosModules.nix-flatpak
    ];
  };
}
