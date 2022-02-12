wg.show:	# shows WireGuard state
	@ sudo wg show

wg.up:		# up WireGuard tunnel
	@ wg-quick up $(WG_CONF_PATH)/$(WG_CONF).conf

wg.down:	# down WireGuard tunnel
	@ wg-quick down $(WG_CONF_PATH)/$(WG_CONF).conf