{
    description = "My NixOS Configuration";

    inputs = {
        nixpkgs = {
            url = "file:///etc/nixos/local-source/nixpkgs-26.05.tar.gz";
        };
    };

    outputs = { nixpkgs, self, ... } @ inputs:

        let
            s = builtins.readFile ./host;
        in

        let
            host = builtins.substring 0 ((builtins.stringLength s) - 1) s;
            system = "x86_64-linux";
        in

        {

            nixosConfigurations = {
                fecivy-laptop = nixpkgs.lib.nixosSystem {
                    specialArgs = { inherit inputs host; };
                    modules = [
                        ./nixos
                    ];
                };

                fecivy-desktop = nixpkgs.lib.nixosSystem {
                    specialArgs = { inherit inputs host; };
                    modules = [
                        ./nixos
                    ];
                };

                fecivy-server = nixpkgs.lib.nixosSystem {
                    specialArgs = { inherit inputs host; };
                    modules = [
                        ./nixos
                    ];
                };

                installer = nixpkgs.lib.nixosSystem {
                    specialArgs = { inherit inputs host; };
                    inherit system;
                    modules = [
                        "${nixpkgs}/nixos/modules/installer/cd-dvd/installation-cd-minimal.nix"
                            ./nixos/base
                            ./installer
                    ];
                };

            };

            packages.${system}.iso = self.nixosConfigurations.installer.config.system.build.isoImage;

        };

}
