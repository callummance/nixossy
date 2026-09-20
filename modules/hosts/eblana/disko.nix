{ inputs, ... }: {
  flake.nixosModules.eblana-disko = { pkgs, lib, ... }: {
    disko.devices = {
      disk = {
        nvme1 = {
          type = "disk";
          device = "/dev/disk/by-id/nvme-KXG50ZNV512G_TOSHIBA_688B71VMK5YS";
          content = {
            type = "gpt";
            partitions = {
              #/boot
              ESP = {
                type = "EF00";
                size = "4096M";
                content = {
                  type = "filesystem";
                  format = "vfat";
                  mountpoint = "/boot";
                  mountOptions = [ "umask=0077" ];
                };
              };
              #/root (encrypted)
              luks = {
                size = "100%";
                content = {
                  type = "luks";
                  name = "crypted_btrfs_nvme";
                  passwordFile = "/tmp/secret.key";
                  settings = {
                    allowDiscards = true;
                  };
                  content = {
                    type = "btrfs";
                    extraArgs = [ "-f" ];
                    subvolumes = {
                      "/root" = {
                        mountpoint = "/";
                        mountOptions = [
                          "compress=zstd"
                          "noatime"
                        ];
                      };
                      "/home" = {
                        mountpoint = "/home";
                        mountOptions = [
                          "compress=zstd"
                          "noatime"
                        ];
                      };
                      "/nix" = {
                        mountpoint = "/nix";
                        mountOptions = [
                          "compress=zstd"
                          "noatime"
                        ];
                      };
                      "/swap" = {
                        mountpoint = "/.swapvol";
                        swap.swapfile.size = "36G";
                      };
                    };
                  };
                };
              };
            };
          };
        };

        sata1 = {
          type = "disk";
          device = "dev/disk/by-id/ata-Seagate_BarraCuda_Q1_SSD_ZA480CV10001_7RV01JDJ";
          content = {
            type = "gpt";
            partitions = {
              sata1_btrfs = {
                size = "100%";
                content = {
                  type = "btrfs";
                  extraArgs = [ "-f" ];
                  subvolumes = {
                    "/steamlib" = {
                      mountpoint = "/mnt/steamlib";
                    };
                    "/heroiclib" = {
                      mountpoint = "/mnt/heroiclib";
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
}
