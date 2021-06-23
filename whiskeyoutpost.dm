/area/whiskey_outpost
	name = "Whiskey Outpost"
	icon_state = "green"
	ceiling = CEILING_METAL
	outside = FALSE

/area/whiskey_outpost/inside
	name = "Unused"
	icon_state = "green"

	requires_power = TRUE

/area/whiskey_outpost/inside/officerdorm
	name = "\improper Officers Quarters"
	icon_state = "livingspace"

/area/whiskey_outpost/inside/canteen
	name = "\improper Canteen"
	icon_state = "cafeteria"

/area/whiskey_outpost/inside/dorms
	name = "\improper Dormatories"
	icon_state = "Sleep"

/area/whiskey_outpost/inside/bunksandprep
	name = "\improper Extended Mission Bunks"
	icon_state = "portemb"

/area/whiskey_outpost/inside/engie
	name = "\improper Engineering"
	icon_state = "engine_smes"
	minimap_color = MINIMAP_AREA_ENGI

	power_equip = TRUE

/area/whiskey_outpost/inside/medbay
	name = "\improper Medbay"
	icon_state = "medbay"
	minimap_color = MINIMAP_AREA_MEDBAY

/area/whiskey_outpost/inside/medbay/surgery
	name = "\improper Medical Operating Room"
	icon_state = "operating"

/area/whiskey_outpost/inside/req
	name = "\improper Requisitions"
	icon_state = "req"

	power_equip = TRUE

/area/whiskey_outpost/inside/cic
	name = "\improper Combat Information Center"
	icon_state = "cic"

	requires_power = FALSE

/area/whiskey_outpost/outside
	name = "Unused"
	icon_state = "green"
	ceiling = CEILING_NONE

	requires_power = TRUE
	dynamic_lighting = DYNAMIC_LIGHTING_ENABLED
	power_light = FALSE
	power_equip = FALSE
	power_environ = FALSE
	outside = TRUE


/area/whiskey_outpost/outside/north
	name = "Whiskey Outpost North"
	icon_state = "north"

/area/whiskey_outpost/outside/west
	name = "Whiskey Outpost West"
	icon_state = "west"

/area/whiskey_outpost/outside/east
	name = "Whiskey Outpost East"
	icon_state = "east"

/area/whiskey_outpost/outside/south
	name = "Whiskey Outpost South"
	icon_state = "south"

/area/whiskey_outpost/outside/west/caves
	name ="Western Caves"
	icon_state = "cave"
	ambience = list('sound/ambience/ambimine.ogg','sound/ambience/ambigen10.ogg','sound/ambience/ambigen12.ogg','sound/ambience/ambisin4.ogg')
	ceiling = CEILING_DEEP_UNDERGROUND
	outside = FALSE
	minimap_color = MINIMAP_AREA_CAVES

/area/whiskey_outpost/outside/south/jungle
	name ="Southern Jungle"
	icon_state = "away2"
	ambience = list('sound/ambience/jungle_amb1.ogg')
	minimap_color = MINIMAP_AREA_JUNGLE
	
