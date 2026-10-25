{ pkgs, ... }:

{
  programs.neovim = {
    enable = true;
    package = pkgs.neovim-unwrapped;
    viAlias = true;
    vimAlias = true;
    defaultEditor = true;

    configure.customLuaRC = ''
        vim.g.mapleader = ' '

        vim.o.number = true
        vim.o.relativenumber = true

        vim.o.ignorecase = true
        vim.o.smartcase = true

        vim.o.cursorline = true
        vim.o.scrolloff = 10
        vim.o.list = true

        vim.o.confirm = true

        vim.opt.timeoutlen = 40000

        vim.opt.clipboard = 'unnamedplus'
        vim.opt.expandtab = true
        vim.opt.tabstop = 4
        vim.opt.shiftwidth = 0

        vim.opt.autoread = true

        vim.opt.splitbelow = true
        vim.opt.splitright = true

        vim.keymap.set({"n", "v"}, "t", "j", {})
        vim.keymap.set({"n", "v"}, "c", "k", {})
        vim.keymap.set({"n", "v"}, "n", "l", {})

        vim.keymap.set({"n", "v"}, "s", "^", {})
        vim.keymap.set({"n", "v"}, "S", "0", {})
        vim.keymap.set({"n", "v"}, "-", "g_", {})
        vim.keymap.set({"n", "v"}, "_", "$", {})

        vim.keymap.set({"n", "v"}, "<Up>", "<C-u>", {})
        vim.keymap.set({"n", "v"}, "<Down>", "<C-d>", {})
        vim.keymap.set({"n", "v"}, "<Left>", "{", {})
        vim.keymap.set({"n", "v"}, "<Right>", "}", {})

        vim.keymap.set({"n", "v"}, "m", "b", {})
        vim.keymap.set({"n", "v"}, "M", "B", {})

        vim.keymap.set({"n", "v"}, "ue", "H", {})
        vim.keymap.set({"n", "v"}, "uu", "M", {})
        vim.keymap.set({"n", "v"}, "ui", "L", {})
        vim.keymap.set({"n", "v"}, "UE", "zt", {})
        vim.keymap.set({"n", "v"}, "UU", "zz", {})
        vim.keymap.set({"n", "v"}, "UI", "zb", {})

        vim.keymap.set({"n", "v"}, "C", "<C-y>", {})
        vim.keymap.set({"n", "v"}, "T", "<C-e>", {})

        vim.keymap.set({"n", "v"}, ";", "%", {})

        vim.keymap.set({"n", "v"}, "<C-u>", "u", {})

        vim.keymap.set({"n"}, "k", "<Nop>", {})
        vim.keymap.set({"n"}, "kk", "cc", {})
        vim.keymap.set({"n"}, "K", "C", {})
        vim.keymap.set({"n"}, "kw", "cw", {})
        vim.keymap.set({"n"}, "kiw", "ciw", {})
        vim.keymap.set({"n"}, "kaw", "caw", {})
        vim.keymap.set({"n"}, "kW", "cW", {})
        vim.keymap.set({"n"}, "kiW", "ciW", {})
        vim.keymap.set({"n"}, "kaW", "caW", {})
        vim.keymap.set({"n"}, "ki\"", "ci\"", {})
        vim.keymap.set({"n"}, "ki'", "ci'", {})
        vim.keymap.set({"n"}, "ki(", "ci(", {})
        vim.keymap.set({"n"}, "ki{", "ci{", {})
        vim.keymap.set({"n"}, "ki[", "ci[", {})
        vim.keymap.set({"n"}, "kit", "cit", {})
        vim.keymap.set({"n"}, "ke", "ce", {})
        vim.keymap.set({"n"}, "ks", "c^", {})
        vim.keymap.set({"n"}, "kS", "c0", {})
        vim.keymap.set({"n"}, "k-", "cg_", {})
        vim.keymap.set({"n"}, "k_", "c$", {})

        vim.keymap.set({"n"}, "ds", "d^", {})
        vim.keymap.set({"n"}, "dS", "d0", {})
        vim.keymap.set({"n"}, "d-", "dg_", {})
        vim.keymap.set({"n"}, "d_", "d$", {})

        vim.keymap.set({"n"}, "ys", "y^", {})
        vim.keymap.set({"n"}, "yS", "y0", {})
        vim.keymap.set({"n"}, "y-", "yg_", {})
        vim.keymap.set({"n"}, "y_", "y$", {})

        vim.keymap.set({"n", "v"}, "b", "s", {})
        vim.keymap.set({"n", "v"}, "B", "s", {})

        vim.keymap.set({"n", "v"}, "L", "~", {})
        vim.keymap.set({"n", "v"}, "lt", "g~", {})
        vim.keymap.set({"n", "v"}, "ll", "gu", {})
        vim.keymap.set({"n", "v"}, "lu", "gU", {})

        vim.keymap.set({"n", "v"}, ">", ">>", {})
        vim.keymap.set({"n", "v"}, "<", "<<", {})

        vim.keymap.set({"n", "v"}, "<Tab>", "==", {})
        vim.keymap.set({"n"}, "<C-S-Tab>", "gg=G", {})

        vim.keymap.set({"n", "v"}, ".", "f", {})
        vim.keymap.set({"n", "v"}, ",", "F", {})

        vim.keymap.set({"n"}, "q", "<Cmd>:q<CR>", {})

        vim.keymap.set({"n"}, "ff", "<Cmd>:vs<CR>", {})
        vim.keymap.set({"n"}, "fd", "<Cmd>:sp<CR>", {})
        vim.keymap.set({"n"}, "FF", ":vs ", {})
        vim.keymap.set({"n"}, "FD", ":sp ", {})

        vim.keymap.set({"n"}, "<C-c>", "<C-w>k", {})
        vim.keymap.set({"n"}, "<C-t>", "<C-w>j", {})
        vim.keymap.set({"n"}, "<C-h>", "<C-w>h", {})
        vim.keymap.set({"n"}, "<C-n>", "<C-w>l", {})

        vim.keymap.set({"n"}, "\\", "n", {})
        vim.keymap.set({"n"}, "|", "N", {})

        vim.keymap.set({"n"}, "<leader>cs", "<Cmd>:noh<CR>", {})
        vim.keymap.set({"n"}, "<C-/>", "*", {})
        vim.keymap.set({"n"}, "<C-S-/>", "#", {})

        vim.keymap.set({"n"}, "<leader>fs", function() vim.lsp.buf.format() end, {})

    '';
  };
}





