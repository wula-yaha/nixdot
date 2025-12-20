{ pkgs, ... }:
{
  programs = {
    vscode = {
      enable = true;
      profiles = {
        default = {
          enableExtensionUpdateCheck = false;
          enableUpdateCheck = false;
          extensions = with pkgs.vscode-extensions; [
            catppuccin.catppuccin-vsc-icons
            catppuccin.catppuccin-vsc
            github.github-vscode-theme
            jnoortheen.nix-ide
            llvm-vs-code-extensions.vscode-clangd
            mkhl.direnv
            ms-python.black-formatter
            ms-python.debugpy
            ms-python.flake8
            ms-python.mypy-type-checker
            ms-python.isort
            ms-python.pylint
            ms-python.python
            ms-python.vscode-pylance
            ms-toolsai.jupyter
            ms-toolsai.vscode-jupyter-slideshow
            ms-toolsai.vscode-jupyter-cell-tags
            ms-toolsai.jupyter-renderers
            ms-toolsai.jupyter-keymap
            tamasfe.even-better-toml
            redhat.vscode-yaml
            redhat.vscode-xml
            vscodevim.vim
            yzhang.markdown-all-in-one
            zainchen.json
          ];
          keybindings = [
            {
              "key" = "ctrl+shift+t";
              "command" = "workbench.action.createTerminalEditor";
            }
            {
              "key" = "ctrl+h";
              "command" = "workbench.action.focusLeftGroup";
              "when" = "vim.active && vim.mode == 'Normal'";
            }
            {
              "key" = "ctrl+l";
              "command" = "workbench.action.focusRightGroup";
              "when" = "vim.active && vim.mode == 'Normal'";
            }
            {
              "key" = "ctrl+j";
              "command" = "workbench.action.focusBelowGroup";
              "when" = "vim.active && vim.mode == 'Normal'";
            }
            {
              "key" = "ctrl+k";
              "command" = "workbench.action.focusAboveGroup";
              "when" = "vim.active && vim.mode == 'Normal'";
            }
          ];
          userSettings = {
            "editor.fontFamily" = "JetBrainsMono Nerd Font";
            "editor.fontSize" = 14.0;
            "editor.guides.bracketPairs" = true;
            "editor.lineHeight" = 1.618;
            "editor.minimap.enabled" = false;
            "extensions.experimental.affinity" = {
              "vscodevim.vim" = 1;
            };
            "window.zoomLevel" = -0.56;
            "vim.highlightedyank.enable" = true;
            "vim.insertModeKeyBindings" = [
              {
                "before" = [
                  "j"
                  "k"
                ];
                "after" = [
                  "<Esc>"
                ];
              }
            ];
          };
        };
      };
    };
  };
}
