{ pkgs, config, ... }: {
    services.tlp = {
        enable = true;
        package = pkgs.tlp.override { enableRDW = config.networking.networkmanager.enable; };
        pd.enable = false;
        settings = {
            TLP_PROFILE_AC = "PRF";

            START_CHARGE_THRESH_BAT0=75;
            STOP_CHARGE_THRESH_BAT0=80;

            RADEON_DPM_PERF_LEVEL_ON_AC = "auto";
            RADEON_DPM_PERF_LEVEL_ON_BAT = "low";

            PLATFORM_PROFILE_ON_AC = "performance";
            PLATFORM_PROFILE_ON_BAT = "low-power";

            CPU_DRIVER_OPMODE_ON_AC = "guided";
            CPU_DRIVER_OPMODE_ON_BAT = "active";

            CPU_ENERGY_PERF_POLICY_ON_AC = "performance";
            CPU_ENERGY_PERF_POLICY_ON_BAT = "power";

            CPU_SCALING_GOVERNOR_ON_AC = "performance";
            CPU_SCALING_GOVERNOR_ON_BAT = "powersave";

            CPU_BOOST_ON_AC = 1;
            CPU_BOOST_ON_BAT = 0;
        };
    };

    environment.systemPackages = [ pkgs.tlp ];
}
