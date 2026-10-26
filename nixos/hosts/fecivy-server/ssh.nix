{ pkgs, ... }: {
    services.openssh = {
        enable = true;
        package = pkgs.openssh;
        ports = [ 22 ];
        allowSFTP = true;
    };
}
