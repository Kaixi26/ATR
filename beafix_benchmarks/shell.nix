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

  venn = pkgs.python3Packages.buildPythonPackage rec {
    pname = "venn";
    version = "0.1.3";
    propagatedBuildInputs = with pkgs.python3Packages; [
      matplotlib
    ];
    src = pkgs.python3Packages.fetchPypi {
      inherit pname version;
      sha256 = "sha256-GjD5vAoogGpiFLujYjoE/qSYEZwZ4iqdKTsx5WGqIJE=";
    };
    doCheck = false;
  };

  python = pkgs.python3.withPackages (p: with p; [
    numpy
    matplotlib
    matplotlib-venn
    venn
  ]);
in
pkgs.mkShell {
  buildInputs = [
    python
  ];
}
