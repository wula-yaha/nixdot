{
  config,
  pkgs,
  username,
  ...
}:
{
  imports = [
    ./direnv
    ./fonts
    ./zsh
  ];
  home = {
    username = "${username}";
    homeDirectory = if pkgs.stdenv.isDarwin then "/Users/${username}" else "/home/${username}";
    stateVersion = "25.05";
    packages = with pkgs; [
      nixfmt
    ];
  };
  programs = {
    home-manager = {
      enable = true;
    };
  };
}
