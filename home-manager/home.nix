{
  config,
  pkgs,
  username,
  ...
}:
{
  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };
  imports = [
    ./alacritty
    ./direnv
    ./fastfetch
    ./fonts
    ./fzf
    ./helix
    ./kitty
    ./lsd
    ./ripgrep
    ./vscode
    ./zsh
  ];
  home = {
    username = "${username}";
    homeDirectory = if pkgs.stdenv.isDarwin then "/Users/${username}" else "/home/${username}";
    stateVersion = "25.11";
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
