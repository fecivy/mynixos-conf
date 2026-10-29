{ pkgs, ... }:

{
    networking.firewall = {
        enable = true;
        allowPing = true;
        package = pkgs.nftables;
        backend = "nftables";
        allowedTCPPorts = [ 80 443 10027 ];
    };
}
