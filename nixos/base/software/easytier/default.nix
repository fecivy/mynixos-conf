{ pkgs, ... }:

{
    services.easytier = {
        enable = true;
        package = pkgs.easytier;
        instances."cas9nerl".configFile = ./easytier.toml;
    };
}
