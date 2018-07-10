{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "cardano-sl-util-test";
          version = "1.3.0";
        };
        license = "MIT";
        copyright = "2016 IOHK";
        maintainer = "hi@serokell.io";
        author = "Serokell";
        homepage = "";
        url = "";
        synopsis = "Cardano SL - general utilities (tests)";
        description = "QuickCheck Arbitrary instances for the Cardano SL general\nutilities package.";
        buildType = "Simple";
      };
      components = {
        cardano-sl-util-test = {
          depends  = [
            hsPkgs.QuickCheck
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.base16-bytestring
            hsPkgs.bytestring
            hsPkgs.cardano-sl-util
            hsPkgs.cryptonite
            hsPkgs.formatting
            hsPkgs.hedgehog
            hsPkgs.hspec
            hsPkgs.mtl
            hsPkgs.quickcheck-instances
            hsPkgs.tagged
            hsPkgs.time-units
            hsPkgs.universum
          ];
          build-tools = [ hsPkgs.cpphs ];
        };
      };
    } // rec { src = ../util/test; }