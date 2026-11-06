{ pkgs, ... }: {
    services.openssh = {
        enable = true;
        package = pkgs.openssh;
        ports = [ 10305 ];
        allowSFTP = true;

        settings = {
          UseDns = true;
          PasswordAuthentication = false;
        };

        hostKeys = [
            {
                path = "/etc/ssh/fecivy_server_host_ed25519_key";
                type = "ed25519";
            }
        ];
    };

    users.users."fecivy".openssh.authorizedKeys.keys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAICGXDHm5cc6Pc94Ku2QqthSRpAWQUun20MpcwoZZ5iOQ fecivy@fecivy-laptop"
    ];

    users.users."root".openssh.authorizedKeys.keys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAICGXDHm5cc6Pc94Ku2QqthSRpAWQUun20MpcwoZZ5iOQ fecivy@fecivy-laptop"
    ];
}
