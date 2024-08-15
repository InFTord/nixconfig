{ config, pkgs, ... }: {
  	imports = [
    		./modules/bundle.nix
  	];
	home = {
		username = "inf";
		homeDirectory = "/home/inf";
		stateVersion = "24.11";



	};
}
