# Gaming related configuration
{ config, pkgs, ... }:

{
  # Enable Steam
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
  };

  # Gaming optimizations
  programs.gamemode.enable = true; # https://nixos.wiki/wiki/Gamemode
}
