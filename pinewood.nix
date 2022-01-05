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
    p.bat 
    p.exa 
    p.tealdeer 
    p.grex 
    p.delta 
    p.bandwhich 
  ];
}