{ pkgs, ... }:

{
    services.murmur = {
        enable = true;
        package = pkgs.murmur;
        port = 10315;
        stateDir = "/data-section/data1/murmur";
    };
}
