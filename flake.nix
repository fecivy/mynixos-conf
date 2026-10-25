{
    description = "My NixOS Configuration";

    inputs = {
        nixpkgs.url = "file:///etc/nixos/local-source/nixpkgs-26.05.tar.gz";
    };

    outputs = { nixpkgs, ... } @ inputs:

        let
            s = builtins.readFile ./host;
            host = builtins.substring 0 ((builtins.stringLength s) - 1) s;
        in

        {
            nixosConfigurations.fecivy-laptop = nixpkgs.lib.nixosSystem {
                specialArgs = { inherit inputs host; };
                modules = [
                    ./nixos
                ];
            };

            nixosConfigurations.fecivy-desktop = nixpkgs.lib.nixosSystem {
                specialArgs = { inherit inputs host; };
                modules = [
                    ./nixos
                ];
            };

            nixosConfigurations.fecivy-server = nixpkgs.lib.nixosSystem {
                specialArgs = { inherit inputs host; };
                modules = [
                    ./nixos
                ];
            };

        };

}
