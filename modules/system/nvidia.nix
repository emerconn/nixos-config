# Nvidia driver configuration
{ config, pkgs, ... }:

{
  # Enable OpenGL
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

  # Nvidia drivers
  services.xserver.videoDrivers = ["nvidia"];
  hardware.nvidia = {
    modesetting.enable = true;
    powerManagement.enable = false;
    powerManagement.finegrained = false;
    open = true; # for RTX 20-series or newer
    nvidiaSettings = true; # accessible via `nvidia-settings`
    package = config.boot.kernelPackages.nvidiaPackages.latest;
  };
}
