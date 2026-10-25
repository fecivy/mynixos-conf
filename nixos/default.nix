{ lib, host, ... }:

{
    imports =
    let
        host-config = lib.path.append ./hosts host;
    in
    [
        ./base
        host-config
    ];
}
