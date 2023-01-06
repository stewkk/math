{ pkgs ? import <nixpkgs> {} }:

let
  tex = (pkgs.texlive.combine {
    inherit (pkgs.texlive) scheme-medium
      dvisvgm dvipng
      wrapfig amsmath ulem hyperref capt-of
      collection-langcyrillic cm-super babel-russian cyrillic;
  });
in
pkgs.mkShell {

  buildInputs = [

    pkgs.anki
    tex

    # keep this line if you use bash
    pkgs.bashInteractive
  ];
}
