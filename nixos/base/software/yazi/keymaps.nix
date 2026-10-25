{
    programs.yazi.settings.keymap = {
        mgr.prepend_keymap = [

            { run = "arrow prev"; on = "c"; }
            { run = "arrow next"; on = "t"; }
            { run = "leave"; on = "h"; }
            { run = "enter"; on = "n"; }

            { run = "arrow -50%"; on = "<C-c>"; }
            { run = "arrow 50%"; on = "<C-t>"; }

            { run = "arrow -100%"; on = "<C-g>"; }
            { run = "arrow 100%"; on = "<C-r>"; }

            { run = "seek -5"; on = "C"; }
            { run = "seek 5"; on = "T"; }

            { run = "copy path"; on = [ "k" "k" ]; }
            { run = "copy dirname"; on = [ "k" "d" ]; }
            { run = "copy filename"; on = [ "k" "f" ]; }
            { run = "copy name_without_ext"; on = [ "k" "F" ]; }

            { run = "toggle_all"; on = "<C-A>"; }

            { run = "find_arrow --next"; on = "\\"; }
            { run = "find_arrow --previous"; on = "|"; }

            { run = "tab_create --current"; on = [ "f" "f" ]; }
            { run = "tab_switch -1 --relative"; on = "<C-,>"; }
            { run = "tab_switch 1 --relative"; on = "<C-.>"; }

            { run = "close"; on = "q"; }
            { run = "quit"; on = "Q"; }
            { run = "quit --no-cwd-file"; on = "<C-q>"; }

            { run = "cd ~/tmp"; on = [ "u" "t" "m" "p" ]; }
            { run = "cd ~/Downloads"; on = [ "u" "d" "l" ]; }
            { run = "cd ~/workspace"; on = [ "u" "w" "s" ]; }
            { run = "cd ~/.config/home-manager"; on = [ "u" "h" "m" ]; }
            { run = "cd /etc/nixos"; on = [ "u" "n" "o" ]; }

            { run = "filter --smart"; on = [ "@" ]; }
        ];

        input.prepend_keymap = [
            { run = "close"; on = "q"; }
            { run = "close --submit"; on = "<Enter>"; }

            { run = "move -1"; on = "h"; }
            { run = "move 1"; on = "n"; }

            { run = "backward"; on = "b"; }
            { run = "forward"; on = "w"; }

            { run = "insert"; on = "i"; }
            { run = "insert --append"; on = "a"; }

            { run = "delete"; on = "x"; }
            { run = "delete --insert"; on = [ "k" "e"]; }

            { run = "yank"; on = "y"; }
            { run = "paste"; on = "p"; }

            { run = "undo"; on = "<C-u>"; }
            { run = "redo"; on = "<C-r>"; }
        ];
    };
}
