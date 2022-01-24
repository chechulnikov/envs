include nix.makefile
include docker.makefile
include dev.go.makefile
include dev.haskell.makefile
include wg.makefile

.DEFAULT_GOAL = help

help:	# prints this help
	@ echo Available targets are:
	@ grep -h -E "^[^\#].+:\s+\#\s+.+$$" ./*.makefile ./makefile

init: 
	@ make nix.install nix.install.deps
	@ fish -c "set -Ux SRC_PATH /Users/$$USER/sources"	# works only with fish
