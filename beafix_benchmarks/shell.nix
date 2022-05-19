{ pkgs ? import <nixpkgs> {} }:
let
  python = pkgs.python3.withPackages (p: with p; [
    numpy
    matplotlib
  ]);
in
pkgs.mkShell {
  buildInputs = [
    python
  ];
}
