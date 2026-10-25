{
    imports = [
        ./hardware.nix
        ./software
        ../_dl
    ];

    users = {
        groups."i2c" = {};
        users."fecivy".extraGroups = [ "i2c"];
    };

    services.udev.extraRules =
        ''
            SUBSYSTEM=="i2c-dev", KERNEL=="i2c-[0-9]*", GROUP="i2c", MODE="0660"
        '';

}
