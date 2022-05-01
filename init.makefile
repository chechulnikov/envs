init:		# install Nix, software, init variables and aliases
	@ make nix.install nix.install.deps init.vars init.func

init.vars:	# init variables
	@ fish -c "set -Ux SRC_PATH /Users/$$USER/sources"	# works only with fish
	@ fish -c "set -Ux WG_CONF_PATH /Users/$$USER/.wg"
	@ fish -c "set -Ux WG_CONF default"