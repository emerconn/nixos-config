# Desktop environment configuration
{ config, pkgs, ... }:

{
  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Enable the GNOME Desktop Environment.
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  # Enable Hyprland
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  # Ozone Wayland support for Chromium & Electron
  environment.sessionVariables.NIXOS_OZONE_WL = "1";

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Enable Bluetooth
  hardware.bluetooth.enable = true;
}
