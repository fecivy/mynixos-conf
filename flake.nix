{
    description = "My NixOS Configuration";

    inputs = {
        nixpkgs = {
            url = "file:///etc/nixos/local-source/nixpkgs-26.05.tar.gz";
        };
    };

    outputs = { nixpkgs, self, ... } @ inputs:

        let
            system = "x86_64-linux";
        in

        {
            nixosConfigurations = {
                fecivy-laptop = nixpkgs.lib.nixosSystem {
                    specialArgs = { inherit inputs; host = "fecivy-laptop"; };
                    modules = [
                        ./nixos
                    ];
                };

                fecivy-desktop = nixpkgs.lib.nixosSystem {
                    specialArgs = { inherit inputs; host = "fecivy-desktop"; };
                    modules = [
                        ./nixos
                    ];
                };

                fecivy-server = nixpkgs.lib.nixosSystem {
                    specialArgs = { inherit inputs; host = "fecivy-server"; };
                    modules = [
                        ./nixos
                    ];
                };

                installer = nixpkgs.lib.nixosSystem {
                    specialArgs = { inherit inputs; host = "fecivy-installer"; };
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
