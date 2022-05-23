{ pkgs ? import <nixpkgs> {} }:
let
  matplotlib-venn = pkgs.python3Packages.buildPythonPackage rec {
      pname = "matplotlib-venn";
      version = "0.11.7";
      propagatedBuildInputs = with pkgs.python3Packages; [
        matplotlib
        scipy
      ];
      src = pkgs.python3Packages.fetchPypi {
        inherit pname version;
        sha256 = "sha256-jYs1BVlDEwmTKMnxdxM92ACijz3WjmgAp4JQwMzM4xc=";
      };
      doCheck = false;
    };

  python = pkgs.python3.withPackages (p: with p; [
    numpy
    matplotlib
    matplotlib-venn
  ]);
in
pkgs.mkShell {
  buildInputs = [
    python
  ];
}
