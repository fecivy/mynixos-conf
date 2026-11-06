{ pkgs, ... }:

{
    services.mysql = {
        enable = true;
        package = pkgs.mariadb;

        dataDir = "/data-section/data1/mysql";

        ensureUsers = [
            {
                name = "gitea";
                ensurePermissions = {
                    "gitea.*" = "ALL PRIVILEGES";
                };
            }
        ];

        ensureDatabases = [ "gitea" ];

        settings = {
            mysqld = {
                key_buffer_size = "6G";
                table_cache = 1600;
                log-error = "/var/log/mysql_err.log";
                plugin-load-add = [ "server_audit" "ed25519=auth_ed25519" ];
            };
            mysqldump = {
                quick = true;
                max_allowed_packet = "16M";
            };
        };

    };
}
