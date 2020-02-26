{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    hyper
    firefox chromium
    vscode
    spaceFM                   # A multiple-panel tabbed file manager
    xfce.xfce4-clipman-plugin # Clipboard manager for Xfce panel
    xfce.xfce4-screenshooter  # Xfce screenshooter
    libsForQt5.vlc            # Cross-platform media player and streaming server
    rofi                      # Window switcher, run dialog and dmenu replacement
    bitwarden
  ];
}

