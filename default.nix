{ nixpkgs ? import <nixpkgs> { } }:
with nixpkgs; mkShell {
  buildInputs = [
    # needed to build tauri
    # https://github.com/NixOS/nixpkgs/blob/master/pkgs/os-specific/darwin/apple-sdk/frameworks.nix
    cargo
    darwin.apple_sdk.frameworks.Carbon
    darwin.apple_sdk.frameworks.AppKit
    darwin.apple_sdk.frameworks.WebKit
    libiconv

    nodejs-16_x
  ];

}
