from nixos/nix:latest

run nix-env -iA nixpkgs.cachix nixpkgs.git
run cachix use dapp
copy ./seth.nix /seth.nix
run nix-build /seth.nix

entrypoint cp /result /host/seth.container
