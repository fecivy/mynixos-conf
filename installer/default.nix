{
    system.activationScripts = {
        inject_nixos_source = {
            deps = [ "specialfs" ];
            text = ''
                echo "Injecting nixos pre-configuration"
                mkdir -p /source/nixos
                cp ${../.} /source/nixos
                '';
        };
    };

    environment.etc."installation-source".source = ../.;
}
