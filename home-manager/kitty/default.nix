{ pkgs, ... }:
{
  programs = {
    kitty = {
      enable = true;
      font = {
        name = "JetBrainsMono Nerd Font Mono";
        size = 11;
      };
      settings = {
        "modify_font cell_width" = "90%";
        "modify_font cell_height" = "104%";
        "remember_window_size" = "yes";
        "remember_window_position" = "yes";
        "window_margin_width" = 8;
        "window_padding_width" = 8;
        "cursor_shape" = "block";
        "cursor_stop_blinking_after" = 0;
        "cursor_trail" = 3;
        "cursor_trail_decay" = "0.1 0.4";
        "macos_option_as_alt" = "yes";
        "macos_quit_when_last_window_closed" = "yes";
        "background" = "#11111b";
      };
      themeFile = "Catppuccin-Mocha";
      shellIntegration = {
        enableBashIntegration = true;
        enableZshIntegration = true;
        mode = "no-cursor";
      };
    };
  };
}
