inix.install:	# installs nix
	@ /bin/sh "sh <(curl -L https://nixos.org/nix/install)"

nix.install.deps:	# install all the software via nix
	@ nix -i
		bandwhich \
		bat \
		colima \
		delta \
		docker \
		envsubst \
		exa \
		fish \
		fzf \
		git \
		grex \
		htop \
		kubectl \
		navi \
		neovim \
		procs \
		ripgrep \
		shadowsocks \
		starship \
		tealdeer \
		wireguard \
		zellij
