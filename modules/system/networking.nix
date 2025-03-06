# Networking configuration
{ config, pkgs, ... }:

{
  networking.hostName = "nixos-desktop"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;
  
  # Firewall rules
  networking.firewall = {
    enable = true;
    allowedTCPPorts = [ 27015 27036 27037 ];  # Common Steam ports
    allowedUDPPorts = [ 27015 27031 27036 ];  # Common Steam ports
  };

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;
}
