{ pkgs, ... }:

{
  programs.niri.package = pkgs.niri;
  programs.niri.enable = true;
}
