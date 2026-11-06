{
    nix.settings = {
        substituters = [
            "https://cache.nixos-cuda.org"
            "https://cache.flox.dev"
        ];
        trusted-public-keys = [
            "cache.nixos-cuda.org:74DUi4Ye579gUqzH4ziL9IyiJBlDpMRn9MBN8oNan9M="
            "flox-cache-public-1:7F4OyH7ZCnFhcze3fJdfyXYLQw/aV7GEed86nQ7IsOs="
        ];
    };

    nixpkgs.config = {
        allowUnfree = true;
        cudaCapabilities = [ "6.0" ];
    };

    nixpkgs.overlays = [
        (final: prev: {
             cudaPackages = prev.cudaPackages_12;
         })
    ];
}
