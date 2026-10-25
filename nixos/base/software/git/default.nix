{ pkgs, ... }:

{
    programs.git = {
        enable = true;
        package = pkgs.git;
        config = {
            user.name = "fecivy";
            user.email = "a_bluebottle@outlook.com";
        };
    };
}
