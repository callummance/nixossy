{ self, ... }: {

  flake.nixosModules.ly =
    { pkgs, lib, ... }:
    let
      inherit (self.packages.${pkgs.stdenv.hostPlatform.system}) lyCommunityAnimations;
    in
    {
      environment.systemPackages = [
        lyCommunityAnimations
      ];

      services.displayManager.ly = {
        enable = true;
        settings = {
          dur_file_path = "${lyCommunityAnimations}/blackhole-smooth-240x67.dur";
        };
      };
    };

  perSystem = { pkgs, lib, ... }: {
    packages.lyCommunityAnimations = pkgs.stdenv.mkDerivation {
      name = "ly-community-animations";
      src = pkgs.fetchFromCodeberg {
        owner = "fairyglade";
        repo = "ly-community";
        rev = "fd85d8584545433520f34fb25584b17280f4c0b9";
        hash = lib.fakeHash;
      };
      installPhase = ''
        cp $src/animations/dur/blackhole-smooth-240x67.dur $out/blackhole-smooth-240x67.dur
      '';
    };
  };
}
