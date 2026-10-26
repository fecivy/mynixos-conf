{ pkgs, ... }:

{
    networking.firewall = {
        enable = true;
        allowPing = true;
        package = pkgs.nftables;
        backend = "nftables";
        allowedTCPPorts = [ 22 80 ];
        allowedUDPPorts = [ 53 ];
    };
}
