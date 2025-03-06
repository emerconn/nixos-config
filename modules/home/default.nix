# Default home-manager module configuration
# This file can be used for shared home-manager configurations across users
{ config, pkgs, ... }:

{
  # Common home-manager configurations can go here
  # These will be available to all users that import this module
  
  # For example, you could define common programs or packages:
  # programs.git = {
  #   enable = true;
  #   userName = "Default Username";
  #   userEmail = "default@example.com";
  # };
  
  # Or common shell aliases:
  # programs.bash = {
  #   enable = true;
  #   shellAliases = {
  #     ll = "ls -la";
  #     update = "sudo nixos-rebuild switch";
  #   };
  # };
}
