{ pkgs, host, ... }:

{
    imports = [
        ./nix.nix
        ./software
    ];

    boot.loader.systemd-boot.enable = true;
    boot.loader.efi.canTouchEfiVariables = true;

    boot.kernelPackages = pkgs.linuxPackages_latest;

    networking.networkmanager.enable = true;
    networking.hostName = host;
    networking.nftables.enable = true;

    time.timeZone = "Asia/Shanghai";

    users.users."fecivy" = {
          isNormalUser = true;
          description = "My primary user account";
          extraGroups = ["networkmanager" "wheel"];
    };

    system.stateVersion = "26.05";
}
