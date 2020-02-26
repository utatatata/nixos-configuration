{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    wget
    vim
    git
    fzf
    atool  # Archive command line helper
    feh    # A light-weight image viewer
    ranger # File manager with minimalistic curses interface
    xclip  # Tool to access the X clipboard from a console application
    bitwarden-cli
    gnupg
  ];
}
