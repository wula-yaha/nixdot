{ pkgs, ... }:
{
  programs = {
    zsh = {
      enable = true;
      enableCompletion = true;
      autosuggestion = {
        enable = true;
        highlight = "fg=#ff00ff,bg=cyan,bold,underline";
        strategy = [
          "history"
          "completion"
          "match_prev_cmd"
        ];
      };
      defaultKeymap = "emacs";
      oh-my-zsh = {
        enable = true;
        plugins = [
          "git"
          "sudo"
        ];
        theme = "af-magic";
      };
      plugins = [
        {
          name = "enhancd";
          file = "init.sh";
          src = pkgs.fetchFromGitHub {
            owner = "b4b4r07";
            repo = "enhancd";
            rev = "v2.2.1";
            sha256 = "0iqa9j09fwm6nj5rpip87x3hnvbbz9w9ajgm6wkrd5fls8fn8i5g";
          };
        }
        {
          name = "wd";
          src = pkgs.zsh-wd;
          file = "share/wd/wd.plugin.zsh";
          completions = [ "share/zsh/site-functions" ];
        }
      ];
    };
  };
}
