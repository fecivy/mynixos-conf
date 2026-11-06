{ pkgs, ... }:

{
    services.gitea = {
        enable = true;
        package = pkgs.gitea;
        user = "gitea";
        group = "gitea";
        appName = "Gitea Service";

        stateDir = "/data-section/data1/gitea";

        database = {
            host = "127.0.0.1";
            name = "gitea";
            port = 3306;
            type = "mysql";
            user = "gitea";
        };

        settings = {
            server = {
                HTTP_PORT = 10311;
                SSH_PORT = 10305;
            };
        };
    };
}
