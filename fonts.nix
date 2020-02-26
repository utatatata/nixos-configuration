{ config, pkgs, ... }:

let
  unstable = import <nixos-unstable> { config = { allowUnfree = true; }; };
in
{
  fonts.fonts = with pkgs; [
    ipafont
    unstable.jetbrains-mono
    nerdfonts
  ];
  fonts.fontconfig.defaultFonts = {
    monospace = [
      "JetBrains Mono"
      "NotoSansMono Nerd Font Mono"
    ];
    serif = [
      "DejaVu Serif"
      "IPAPMincho"
      "NotoSerif Nerd Font"
    ];
    sansSerif = [
      "DejaVu Sans"
      "IPAPGothic"
      "NotoSans Nerd Font"
    ];
  };
}
