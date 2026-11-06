{ pkgs, ... }:

{
    services.gitea = {
        enable = true;
        package = pkgs.gitea;
        user = "gitea";
        group = "gitea";
        appName = "Gitea";
    };
}
