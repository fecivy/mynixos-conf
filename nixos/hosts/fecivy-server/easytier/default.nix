{ pkgs, ... }:

{
    services.easytier = {
        enable = true;
        package = pkgs.easytier;
        instances."cas9nerl".configFile = ./easytier.toml;
        instances."mesh-p0xll".configFile = ./mesh-p0xll_server.toml;
    };
}
