{ pkgs, ... }:

{
    services.nginx = {
        enable = true;
        package = pkgs.nginxStable;
        group = "nginx";
        user = "nginx";
        logError = "stderr";

    };
}
