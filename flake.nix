{
	description = "main laptop setup";
	
	inputs = {
		nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

		home-manager = {
			url = "github:nix-community/home-manager";
			inputs.nixpkgs.follows = "nixpkgs";

		};
		chaotic.url = "github:chaotic-cx/nyx/nyxpkgs-unstable";

	};
	
	outputs = { nixpkgs, home-manager, chaotic,  ... }: {
		nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
			system = "x86_64-linux";
			modules = [ ./nixos/configuration.nix chaotic.nixosModules.default ];		
		};
		homeConfigurations.inf = home-manager.lib.homeManagerConfiguration {
			pkgs = nixpkgs.legacyPackages.x86-64-linux;
			modules = [ ./home-manager/home.nix];

		};
	
	};

}
