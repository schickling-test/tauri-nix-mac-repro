{ nixpkgs ? import <nixpkgs> { } }:
with nixpkgs;
rustPlatform.buildRustPackage rec {
  pname = "tauri-test";
  version = "0.2.1";

  src = "./src-tauri";

  cargoSha256 = "sha256-iusSu92o0YyraxA9n4goZC2AjQ5C3s2g+7z2CxWxS2w=";

  buildInputs = [
    cargo
    darwin.apple_sdk.frameworks.Carbon
    darwin.apple_sdk.frameworks.AppKit
    darwin.apple_sdk.frameworks.WebKit
    darwin.apple_sdk.frameworks.Security
    libiconv
    yarn
    nodejs-16_x
  ];

	shellHook = ''
		PATH="${nixpkgs.yarn}/bin:${nixpkgs.cargo}/bin:$PATH"
	'';
}
