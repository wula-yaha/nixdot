{ pkgs, ... }:
{
  home = {
    packages = with pkgs; [
      nerd-fonts.victor-mono
      nerd-fonts.ubuntu-sans
      nerd-fonts.ubuntu-mono
      nerd-fonts.terminess-ttf
      nerd-fonts.symbols-only
      nerd-fonts.sauce-code-pro
      nerd-fonts.roboto-mono
      nerd-fonts.noto
      nerd-fonts.mononoki
      nerd-fonts.monaspace
      nerd-fonts.jetbrains-mono
      nerd-fonts.iosevka
      nerd-fonts.hack
      wqy_zenhei
      wqy_microhei
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-cjk-serif
      noto-fonts-color-emoji
      noto-fonts-monochrome-emoji
    ];
  };
  fonts = {
    fontconfig = {
      enable = true;
      antialiasing = true;
      hinting = "full";
      subpixelRendering = "rgb";
      defaultFonts = {
        serif = [
          "Noto Serif"
          "Noto Serif CJK SC"
        ];
        sansSerif = [
          "Ubuntu Sans"
          "Noto Sans"
          "Noto Sans CJK TC"
          "WenQuanYi Zen Hei"
        ];
        monospace = [
          "JetBrains Mono Nerd Font"
          "Noto Sans Mono"
          "Noto Sans Mono CJK SC"
          "WenQuanYi Micro Hei Mono"
        ];
        emoji = [
          "Noto Color Emoji"
          "Noto Sans Mono"
        ];
      };
    };
  };
}
