{
  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

  outputs =
    { self, nixpkgs }:
    let
      pkgs = nixpkgs.legacyPackages.aarch64-linux;
    in
    {
      devShells.aarch64-linux.default = pkgs.mkShell {
        packages = [
          pkgs.hugo
        ];
      };
    };
}
