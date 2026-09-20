{ self, inputs, ... }: {
  flake.nixosModules.eblana-configuration = { pkgs, lib, ... }: {
    imports = [
      #Import libraries
      inputs.disko.nixosModules.disko
      #Import hardware config
      self.nixosModules.eblana-hardware
      self.nixosModules.eblana-disko
      #Import users
      self.nixosModules.users-callum
      #Import features
      self.nixosModules.appimage
      self.nixosModules.audio
      self.nixosModules.console
      self.nixosModules.flatpak
      self.nixosModules.networkmanager
      self.nixosModules.plymouth
      self.nixosModules.flatpak

      self.nixosModules.chezmoi
      self.nixosModules.neovim
      self.nixosModules.sheldon
      self.nixosModules.starship
      self.nixosModules.utils
      self.nixosModules.zsh

      self.nixosModules.firefox

      self.nixosModules.ly
      self.nixosModules.swaywm
      self.nixosModules.gnome
      self.nixosModules.niriwm
      self.nixosModules.gnome-keyring
    ];

    #Enable flakes
    nix.settings.experimental-features = [
      "nix-command"
      "flakes"
    ];

    #Config
    networking.hostname = "eblana";
    time.timezone = "Europe/London";
    i18n.defaultLocale = "en_GB.UTF-8";

    services.xserver = {
      enable = true;
      xkb = {
        layout = "gb";
        options = "caps:escape";
      };
    };

    programs.gnupg.agent = {
      enable = true;
      enableSSHSupport = true;
    };

    services = {
      printing.enable = true;
      libinput.enable = true;
      openssh.enable = true;
    };

    system.stateVersion = "25.11";
  };
}
