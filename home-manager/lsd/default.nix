{ pkgs, ... }:
{
  programs = {
    lsd = {
      enable = true;
      enableBashIntegration = true;
      enableZshIntegration = true;
      colors = {
        size = {
          large = "dark_yellow";
          none = "grey";
          small = "yellow";
        };
      };
      settings = {
        ignore-globs = [
          ".git"
          ".hg"
        ];
      };
    };
  };
}
