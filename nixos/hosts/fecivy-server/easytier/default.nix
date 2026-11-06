{ pkgs, ... }:

{
    services.easytier = {
        enable = true;
        package = pkgs.easytier;
        instances."mesh-p0xll".configFile = ./mesh-p0xll_server.toml;
    };
}
