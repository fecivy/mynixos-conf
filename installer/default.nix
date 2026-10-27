{
    inject_nixos_source = {
        deps = [ "specialfs" ];
        text = ''
            TARGET_DIR="/source"
            echo "Injecting nixos configuration to $TARGET_DIR"
            mkdir $TARGET_DIR
            cp ${../.} "$TARGET_DIR"/nixos
        '';
    };
}
