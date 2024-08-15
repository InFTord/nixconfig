{ pkgs, ... }: {
  programs.fish.enable = true;

  users = {
    defaultUserShell = pkgs.fish;

    users.inf = {
      isNormalUser = true;
      description = "mrow";
      extraGroups = [ "networkmanager" "wheel" "input" "libvirtd" "gamemode" ];
      packages = with pkgs; [];
    };
  };
}
