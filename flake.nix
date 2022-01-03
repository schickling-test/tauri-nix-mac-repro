{
description = "Flake to manage my Java workspace.";

inputs.nixpkgs.url = "github:nixos/nixpkgs/master";
inputs.tauri-nix-mac-repo = {
	url = "github:schickling-test/tauri-nix-mac-repro/main";
	flake = false;
};

outputs = inputs:
let
  system = "x86_64-darwin";
  pkgs = inputs.nixpkgs.legacyPackages.${system};
  tauri-src = inputs.tauri-nix-mac-repo;

in {
  devShell.${system} = pkgs.rustPlatform.buildRustPackage rec {
    name = "tauri-test";
    version = "test";
    
    src = tauri-src + "/src-tauri";

    cargoSha256 = "sha256-hbGfT2PWLIRoc9LN9KN9o56kHByvvNf35ZDO39PyRN8=";
    buildInputs = with pkgs; [ 
	pkgs.cargo 
	pkgs.darwin.apple_sdk.frameworks.Carbon 
	pkgs.darwin.apple_sdk.frameworks.AppKit 
	pkgs.darwin.apple_sdk.frameworks.WebKit
	pkgs.darwin.apple_sdk.frameworks.Security
	pkgs.libiconv
	pkgs.yarn
	pkgs.nodejs-16_x ];

    shellHook = ''
	PATH="${pkgs.cargo}/bin:${pkgs.yarn}/bin:${pkgs.nodejs-16_x}/bin:$PATH"
    '';
  };
 };
}
