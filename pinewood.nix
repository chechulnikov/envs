{ p ? import <nixpkgs> {} }:
p.mkShell {
  buildInputs = [
    p.htop
    p.fish
    p.git
    p.neovim
    p.docker
    p.kubectl
    p.colima
  ];
}