{ pkgs ? import (fetchTarball https://github.com/NixOS/nixpkgs/archive/22.11.tar.gz) {} }:

pkgs.mkShell {
  name = "portfolio-env";

  buildInputs = [
    # pkgs.ubuntuMinimal
    pkgs.ucspi-tcp
  ];

  shellHook = ''
    export DEV=false
    EXPOSE 3000
    cp -r . /app
    /app/start.sh
  '';
}
