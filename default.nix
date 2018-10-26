let
  pkgs = import <nixpkgs> {};

  texlive = pkgs.texlive.combine {
    inherit (pkgs.texlive)
    scheme-small
    cm-super;
  };
in {
  poster = pkgs.stdenv.mkDerivation {
    name = "poster";
    src = ./.;

    buildInputs = [
      texlive
    ];
  };
}
