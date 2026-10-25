{ lib, ... }:

{
    nix.settings = {
        trusted-users = ["fecivy"];

        experimental-features = "nix-command flakes";

        substituters = lib.mkForce [
            "https://mirrors.tuna.tsinghua.edu.cn/nix-channels/store?priority=10" 
            "https://mirrors.ustc.edu.cn/nix-channels/store?priority=20"
            "https://mirror.nju.edu.cn/nix-channels/store?priority=40"
            "https://cache.nixos.org?priority=50"
        ];

        trusted-public-keys = [
            "cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY="
        ];

    };

    nix.channel.enable = false;
}
