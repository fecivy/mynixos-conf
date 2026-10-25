{ config, lib, modulesPath, ... }:

{
  imports = [
     (modulesPath + "/installer/scan/not-detected.nix")
  ];

  boot.initrd.availableKernelModules = [ "ehci_pci" "ahci" "nvme" "xhci_pci" "usbhid" "usb_storage" "sd_mod" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ "kvm-intel" "i2c-dev"  ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    { device = "/dev/disk/by-uuid/8ff5cc45-426b-4073-bd09-e6b24a2666bc";
      fsType = "f2fs";
    };

  fileSystems."/boot" =
    { device = "/dev/disk/by-uuid/FD91-BE54";
      fsType = "vfat";
      options = [ "fmask=0077" "dmask=0077" ];
    };

    fileSystems."/datarry/steamapps" =
    {
        device = "/dev/disk/by-id/ata-WDC_WD10EZEX-21WN4A0_WCC6Y0JHY3V0-part1";
        fsType = "ext4";
        options = [ "rw" "nodev" "noatime" "async" "data=ordered" "journal_checksum" "exec" "nosuid" "nofail" ];
    };

    fileSystems."/datarry/minecraft" = 
    {
        device = "/dev/disk/by-id/ata-WDC_WD5000AZLX-00CL5A0_WD-WCC3FM7167HU-part1";
        fsType = "ext4";
        options = [ "rw" "nodev" "noatime" "async" "data=ordered" "journal_checksum" "exec" "nosuid" "nofail" ];
    };

    fileSystems."/datarry/vms" =
    {
        device = "/dev/disk/by-id/ata-WDC_WD5000AZLX-00JKKA0_WD-WCC6Y6RC94XF-part1";
        fsType = "ext4";
        options = [ "rw" "nodev" "noatime" "async" "data=ordered" "journal_checksum" "noexec" "nosuid" "nofail" ];
    };

    fileSystems."/datarry/space" =
    {
        device = "/dev/disk/by-id/ata-WDC_WD5000AAKX-08U6AA0_WD-WMC2E8699705-part1";
        fsType = "ext4";
        options = [ "rw" "nodev" "noatime" "async" "data=ordered" "journal_checksum" "exec" "nosuid" "nofail" ];
    };

    fileSystems."/datarry/obs-1" =
    {
        device = "/dev/disk/by-id/ata-WDC_WD5000AAKX-001CA0_WD-WCAYUS870410-part1";
        fsType = "ext4";
        options = [ "rw" "nodev" "noatime" "async" "data=ordered" "journal_checksum" "noexec" "nosuid" "nofail" ];
    };

    fileSystems."/datarry/obs-2" =
    {
        device = "/dev/disk/by-id/ata-WDC_WD5000AAKX-08U6AA0_WD-WCC2E7RYF752-part1";
        fsType = "ext4";
        options = [ "rw" "nodev" "noatime" "async" "data=ordered" "journal_checksum" "noexec" "nosuid" "nofail" ];
    };

  swapDevices =
    [ { device = "/dev/disk/by-uuid/7b31eca3-a44e-47e8-9931-966bfda74c51"; }
    ];

  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
  hardware.cpu.intel.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;

  hardware.graphics = {
      enable = true;
      enable32Bit = true;
  };

  hardware.amdgpu.opencl.enable = true;

  hardware.bluetooth = {
      enable = true;
      powerOnBoot = false;
  };

}
