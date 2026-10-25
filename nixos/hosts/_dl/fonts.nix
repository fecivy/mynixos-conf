{ pkgs, ... }:

{
  fonts.packages = with pkgs; [
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-cjk-serif
      noto-fonts-color-emoji

      source-serif
      source-sans
      source-han-sans
      source-han-serif

      wqy_microhei
      lxgw-wenkai

      sarasa-gothic
      nerd-fonts.jetbrains-mono

      nerd-fonts.agave
      nerd-fonts.adwaita-mono
      nerd-fonts.atkynson-mono
      nerd-fonts.caskaydia-mono
      nerd-fonts.code-new-roman
      nerd-fonts.comic-shanns-mono
      nerd-fonts.cousine
      nerd-fonts.hack
      nerd-fonts.martian-mono
      nerd-fonts.monofur
      nerd-fonts.mononoki
      nerd-fonts.profont
      monaspace

    ];
}
