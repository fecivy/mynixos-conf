{ pkgs, ... }:

{
    programs.git = {
        enable = true;
        package = pkgs.git;
        config = {
            user.name = "fecivy";
            user.email = "a_bluebottle@outlook.com";
            http.lowSpeedLimit = 0;
            http.lowSpeedTime = 600;
            http.postBuffer = 1048576000;
            core.compression = -1;
        };
    };
}
