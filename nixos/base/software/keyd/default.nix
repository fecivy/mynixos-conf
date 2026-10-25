{ pkgs, ... }:

{
    services.keyd.enable = true;
    services.keyd.package = pkgs.keyd;
    environment.etc."keyd/keyd.conf".source = ./keyd.conf;
}
