{ pkgs, ... }:

{
    imports =
    [
        ./dae
        ./easytier
        ./git
        ./keyd
        ./ly
        ./neovim
        ./yazi
    ];

    environment.systemPackages = with pkgs;
    [
        # Basic utils
        openssh
        util-linux
        iproute2
        bind
        file
        gnugrep
        man
        findutils
        psmisc
        procps
        net-tools
        lsof
        gawk
        gnused
        perl
        rsync
        htop
        sysstat
        ncdu
        strace
        ltrace
        curl
        wget
        aria2
        netcat-gnu
        smartmontools
        hdparm
        mesa
        fio
        lm_sensors
        mdadm
        fd
        bat
        tree
        e2fsprogs
        pciutils
        testdisk
        tmux

        # Archive utils
        zip
        unzip
        gnutar
        cpio
        gzip
        xz
        bzip2
        zstd
        lz4
        lzip

        # misc
        fastfetch
    ];
}
