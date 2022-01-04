{
description = "Flake to manage my Java workspace.";

inputs.nixpkgs.url = "github:nixos/nixpkgs/master";
inputs.tauri-nix-mac-repo = {
	url = "./app/src-tauri";
	flake = false;
};

outputs = inputs:
let
  pkgs-x86_64-darwin = inputs.nixpkgs.legacyPackages.x86_64-darwin;
  pkgs-aarch64-darwin = inputs.nixpkgs.legacyPackages.aarch64-darwin;
  tauri-src = inputs.tauri-nix-mac-repo;

in {
  devShell.aarch64-darwin = pkgs-aarch64-darwin.rustPlatform.buildRustPackage rec {
    name = "tauri-test";
    version = "test";

    src = tauri-src;

    cargoSha256 = "sha256-hbGfT2PWLIRoc9LN9KN9o56kHByvvNf35ZDO39PyRN8=";
    cargoLock = {
      lockFile = "${src}/Cargo.lock";
    };
    dontUnpack = true;
    unpackPhase = ":";
    buildPhase = ''
      cd $out/app/
      ${pkgs-aarch64-darwin.cargo}/bin/cargo build
    '';

    buildInputs = with pkgs-aarch64-darwin; [
			pkgs-aarch64-darwin.cargo
			pkgs-aarch64-darwin.darwin.apple_sdk.frameworks.Carbon
			pkgs-aarch64-darwin.darwin.apple_sdk.frameworks.AppKit
			pkgs-aarch64-darwin.darwin.apple_sdk.frameworks.WebKit
			pkgs-aarch64-darwin.darwin.apple_sdk.frameworks.Security
			pkgs-aarch64-darwin.libiconv
			pkgs-aarch64-darwin.yarn
			pkgs-aarch64-darwin.nodejs-16_x
		];

    shellHook = ''
			PATH="${pkgs-aarch64-darwin.cargo}/bin:${pkgs-aarch64-darwin.yarn}/bin:${pkgs-aarch64-darwin.nodejs-16_x}/bin:$PATH"
    '';
  };


	devShell.x86_64-darwin = pkgs-x86_64-darwin.rustPlatform.buildRustPackage rec {
    name = "tauri-test";
    version = "test";

    src = tauri-src;

    cargoSha256 = "sha256-hbGfT2PWLIRoc9LN9KN9o56kHByvvNf35ZDO39PyRN8=";
    cargoLock = {
      lockFile = "${src}/Cargo.lock";
    };
    dontUnpack = true;
    unpackPhase = ":";
    buildPhase = ''
      cd $out/app/
      ${pkgs-x86_64-darwin.cargo}/bin/cargo build
    '';

    buildInputs = with pkgs-x86_64-darwin; [
			pkgs-x86_64-darwin.cargo
			pkgs-x86_64-darwin.darwin.apple_sdk.frameworks.Carbon
			pkgs-x86_64-darwin.darwin.apple_sdk.frameworks.AppKit
			pkgs-x86_64-darwin.darwin.apple_sdk.frameworks.WebKit
			pkgs-x86_64-darwin.darwin.apple_sdk.frameworks.Security
			pkgs-x86_64-darwin.libiconv
			pkgs-x86_64-darwin.yarn
			pkgs-x86_64-darwin.nodejs-16_x
		];

    shellHook = ''
			PATH="${pkgs-x86_64-darwin.cargo}/bin:${pkgs-x86_64-darwin.yarn}/bin:${pkgs-x86_64-darwin.nodejs-16_x}/bin:$PATH"
    '';
  };
 };
}
