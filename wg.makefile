wg.up:
	@ wg-quick up $(WG_CONF_PATH)/$(WG_CONF).conf

wg.down:
	@ wg-quick down $(WG_CONF_PATH)/$(WG_CONF).conf