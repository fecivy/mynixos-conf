{ pkgs, ... }:

{
    networking.firewall = {
        enable = true;
        allowPing = true;
        package = pkgs.nftables;
        backend = "nftables";
        allowedTCPPorts = [ 80 443 10305 10029 10300 10301 10302 10303];
    };
}
