FROM nixos/nix

RUN git clone https://github.com/beeb/rust-nix-static.git

WORKDIR /rust-nix-static

RUN nix --extra-experimental-features nix-command --extra-experimental-features flakes build
