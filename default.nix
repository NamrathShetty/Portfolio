{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  name = "portfolio-env";

  buildInputs = [
    pkgs.ubuntu
    pkgs.ucspi-tcp
  ];

  shellHook = ''
    export DEV=false
    EXPOSE 3000
    cp -r . /app
    /app/start.sh
  '';
}
