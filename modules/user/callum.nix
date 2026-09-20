_: {
  flake.nixosModules.users-callum = { pkgs, ... }: {
    users.users.callum = {
      isNormalUser = true;
      home = "/home/callum";
      createHome = true;
      initialHashedPassword = "$6$F8DhEuz1hoXGbl.v$K9QetH302o0PRJyfdMQfSnGPxuX/XaEkHioQ5TN.vK8f62mYsRSOvw0a94g3Fe1TGji8No9iSgL30A3otPE4j1";
      shell = pkgs.zsh;
      extraGroups = [
        "wheel"
        "sudo"
        "networkmanager"
      ];
    };

    programs.zsh.enable = true;
  };
}
