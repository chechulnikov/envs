nix.install:	# installs nix
	@ /bin/sh "sh <(curl -L https://nixos.org/nix/install)"

nix.install.deps:	# install all the software via nix
	@ nix-env -i \
		htop \
		fish \
		git \
		neovim \
		docker \
		kubectl \
		colima \
		bat \
		exa \
		tealdeer \
		grex \
		delta \
		bandwhich \
		wireguard-tools