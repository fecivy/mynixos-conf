{ pkgs, ... }:

{

    imports = [
        ./keymaps.nix
    ];

    programs.yazi = {
        enable = true;
        package = pkgs.yazi;

        settings.yazi = {
            mgr = {
                show_hidden = true;
                show_symlink = true;
                ratio = [2 5 3];
                sort_by = "natural";
                sort_sensitive = true;
                sort_dir_first = true;
                sort_translit = true;
                linemode = "size";
                scrolloff = 9;
                mouse_events = [ "drag" ];
            };

            preview = {
                wrap = "yes";
                image_quality = 90;
            };
        };
  };

}
