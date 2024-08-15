{
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.initrd.kernelModules = [ "amdgpu" ];
  boot.extraModprobeConfig = ''
	options iwlwifi	 11n_disable=8
  '';
}
