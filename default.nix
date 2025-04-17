{ pkgs ? import (fetchTarball https://github.com/NixOS/nixpkgs/archive/22.11.tar.gz) {} }:

pkgs.mkShell {
  name = "portfolio-env";

  buildInputs = [
    # pkgs.ubuntuMinimal
    pkgs.ucspi-tcp
  ];

  shellHook = ''
    export DEV=false
    export PORT=3000
    echo "Port $PORT is exposed"
    mkdir -p $HOME/app
    cp -r . $HOME/app
    chmod +x $HOME/app/start.sh
    $HOME/app/start.sh
  '';
}
