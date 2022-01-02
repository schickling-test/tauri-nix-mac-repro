{ stdenv, lib, fetchFromGitHub, rustPlatform, installShellFiles, darwin, clang }:

rustPlatform.buildRustPackage rec {
  pname = "tauri-nix-mac-repro";
  version = "8.1.2";
  # name = "tauri-local";

  # src = ./src-tauri;
  # cargoLock = {
  #   lockFile = ./src-tauri/Cargo.lock;
  # };
  src = fetchFromGitHub
    {
      owner = "schickling-test";
      repo = pname;
      # TODO fix https://github.com/temporalio/ui-server/issues/80
      rev = "80a33b4a828a562970cd3a807d93abc4c977e039";
      sha256 = "sha256-S7PN37CNJiirGFFMukiGoI2ZxZ0/7l66xyRdLINLaHk=";
    } + "/src-tauri";

  cargoSha256 = "sha256-BCXwRmjl01KyTrcUOVglT4YcSmYLgje4OOgDPQ4julE=";

  doCheck = false;

  buildInputs = [
    # needed to build tauri
    # https://github.com/NixOS/nixpkgs/blob/master/pkgs/os-specific/darwin/apple-sdk/frameworks.nix
    # cargo
    darwin.apple_sdk.frameworks.Carbon
    darwin.apple_sdk.frameworks.AppKit
    darwin.apple_sdk.frameworks.WebKit
    clang
    # libiconv
  ];

  nativeBuildInputs = [ installShellFiles ];
}
