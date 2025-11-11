{ pkgs, ... }:
pkgs.mkShell {
  buildInputs = with pkgs; [
    uv
  ];
  shellHook = ''
    echo ""
    echo "====================================="
    echo "= Welcome to Python Dev Environment ="
    echo "====================================="
    echo ""
  '';
}
