WG_CONF = default

wg.init:
	@ fish -c "set -Ux WG_CONF_PATH /Users/$$USER/.wg"	# works only with fish

wg.up:
	@ wg-quick up $(WG_CONF_PATH)/$(WG_CONF).conf

wg.down:
	@ wg-quick down $(WG_CONF_PATH)/$(WG_CONF).conf