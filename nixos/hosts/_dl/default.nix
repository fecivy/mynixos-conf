{ pkgs, ... }:

{
    imports = [
        ./nix.nix
        ./software
        ./fonts.nix
    ];

    users.users."fecivy".packages = [
        pkgs.home-manager
    ];

    networking.firewall.enable = false;

    i18n.defaultLocale = "zh_CN.UTF-8";
    i18n.extraLocaleSettings = {
        LC_ADDRESS = "zh_CN.UTF-8";
        LC_IDENTIFICATION = "zh_CN.UTF-8";
        LC_MEASUREMENT = "zh_CN.UTF-8";
        LC_MONETARY = "zh_CN.UTF-8";
        LC_NAME = "zh_CN.UTF-8";
        LC_NUMERIC = "zh_CN.UTF-8";
        LC_PAPER = "zh_CN.UTF-8";
        LC_TELEPHONE = "zh_CN.UTF-8";
        LC_TIME = "zh_CN.UTF-8";
    };

    security = {
        polkit = {
            enable = true;
            package = pkgs.polkit;
        };

        soteria = {
            enable = true;
            package = pkgs.soteria;
        };
    };

    services.gnome.gnome-keyring.enable = false;

    environment = {
        variables.AMD_VULKAN_ICD = "RADV";
        pathsToLink = [
            "/share/zsh"
        ];
    };

    # System wide rocm support
    systemd.tmpfiles.rules =
        let
        rocmEnv = pkgs.symlinkJoin {
            name = "rocm-combined";
            paths = with pkgs.rocmPackages; [
                rocblas
                    hipblas
                    clr
            ];
        };
    in [
        "L+ /opt/rocm - - - -  ${rocmEnv}" 
    ];

}
