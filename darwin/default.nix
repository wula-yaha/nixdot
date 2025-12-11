{
  lib,
  pkgs,
  config,
  username,
  ...
}:
{
  nix = {
    enable = true;
    settings = {
      experimental-features = [
        "nix-command"
        "flakes"
      ];
      auto-optimise-store = false;
    };
    gc = {
      automatic = true;
      options = "--delete-older-than 7d";
    };
  };
  users = {
    users = {
      "${username}" = {
        home = "/Users/${username}";
      };
    };
  };
  system = {
    primaryUser = username;
    stateVersion = 6;
  };
  programs = {
    zsh = {
      enable = true;
    };
  };
  homebrew = {
    enable = true;
    onActivation = {
      autoUpdate = false;
      cleanup = "none";
    };
    brews = [
      "mas"
    ];
    casks = [
      "google-chrome"
    ];
    taps = builtins.attrNames config.nix-homebrew.taps;
  };
  nix-homebrew = {
    enable = true;
    enableRosetta = true;
    user = "${username}";
    taps = { };
    mutableTaps = true;
    autoMigrate = true;
  };
}
