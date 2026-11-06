{ config, lib, pkgs, modulesPath, ... }:

{
  imports =
    [ (modulesPath + "/installer/scan/not-detected.nix")
    ];

  boot.initrd.availableKernelModules = [ "ehci_pci" "ahci" "isci" "mpt3sas" "usb_storage" "usbhid" "sd_mod" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ "kvm-intel" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    { device = "/dev/disk/by-uuid/a662b07e-09de-49f7-b515-8cb927251ade";
      fsType = "f2fs";
    };

  fileSystems."/boot" =
    { device = "/dev/disk/by-uuid/8C5C-DD04";
      fsType = "vfat";
      options = [ "fmask=0077" "dmask=0077" ];
    };

  fileSystems."/data-section/data1" =
    { device = "/dev/disk/by-uuid/aee15991-3c4a-4f03-9487-7e30c1658588";
      fsType = "ext4";
      options = [ "rw" "noexec" "nodev" "nosuid" "noatime" "async" "nouser" "data=ordered" "journal_checksum" "nofail" ];
    };

  fileSystems."/data-section/data2" =
    { device = "/dev/disk/by-uuid/f2518f9c-b919-4ad0-af3c-0f2699f3c27a";
      fsType = "ext4";
      options = [ "rw" "noexec" "nodev" "nosuid" "noatime" "async" "nouser" "data=ordered" "journal_checksum" "nofail" ];
    };

  fileSystems."/data-section/data3" =
    { device = "/dev/disk/by-uuid/341b73a3-2559-43be-9ff7-82626f292b2d";
      fsType = "ext4";
      options = [ "rw" "noexec" "nodev" "nosuid" "noatime" "async" "nouser" "data=ordered" "journal_checksum" "nofail" ];
    };

      fileSystems."/data-section/data4" =
    { device = "/dev/disk/by-uuid/10e5596d-acd6-4060-9b22-85f66ca74791";
      fsType = "ext4";
      options = [ "rw" "noexec" "nodev" "nosuid" "noatime" "async" "nouser" "data=ordered" "journal_checksum" "nofail" ];
    };

  swapDevices =
    [ { device = "/dev/disk/by-uuid/3a6f94af-5b71-4ce6-98bd-0eb994e0ab1b"; }
    ];

    # Nvidia
    services.xserver.videoDrivers = [ "nvidia" ];
    hardware.graphics.enable = true;
    hardware.nvidia = {
        open = false;
        branch = "legacy_580";
    };
    boot.blacklistedKernelModules = [ "nouveau" ];


  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
  hardware.cpu.intel.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
}
