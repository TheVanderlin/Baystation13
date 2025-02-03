
// CHAAAAOS

/obj/item/clothing/head/helmet/flak/chaos
	name = "ruinous flak helmet"
	desc = "A black plasteel helmet featuring a skull-shaped mask visor."
	icon_state = "vraks2"
	item_state = "vraks2"
	flags_inv = HIDEEARS|BLOCKHEADHAIR
	body_parts_covered = HEAD|FACE|EYES
	max_pressure_protection = VOIDSUIT_MAX_PRESSURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+100
	slowdown_general = 0.009
	disorientation = 0.35
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_TEN,
		bio = ARMOR_BIO_THIRTY+10,
		rad = ARMOR_RAD_THIRTY+35,
		bomb = ARMOR_BOMB_TEN+10
	)

/obj/item/clothing/head/helmet/flak/chaos/alt
	name = "ruinous flak helmet"
	icon_state = "vraks3"
	item_state = "vraks3"

/obj/item/clothing/head/helmet/flak/chaos/alty
	name = "ruinous flak helmet"
	icon_state = "vraks1"
	item_state = "vraks1"

/obj/item/clothing/head/helmet/flak/chaos/bloodpact
	name = "heavy flak helmet"
	desc = "A crude flak helmet forged for the Bloodpact Warriors of the sanguinary warlords of Chaos.."
	icon_state = "BP_Helmet"
	item_state = "BP_Helmet"

/obj/item/clothing/head/helmet/flak/chaos/bloodpact/masterwork
	name = "heavy flak helmet"
	desc = "A carapace helmet forged for the Bloodpact Warriors of the sanguinary warlords of Chaos.."
	icon_state = "BPHelmet1"
	item_state = "BPHelmet1"
	disorientation = 0.5
	armor = list(
		melee = ARMOR_MELEE_FLAK+1,
		bullet = ARMOR_BALLISTIC_FLAK+1,
		laser = ARMOR_LASER_FLAK+1,
		energy = ARMOR_ENERGY_TEN,
		bio = ARMOR_BIO_THIRTY+10,
		rad = ARMOR_RAD_THIRTY+35,
		bomb = ARMOR_BOMB_TEN+10
	)

/obj/item/clothing/head/helmet/flak/chaos/sekite
	name = "heavy flak helmet"
	desc = "A crude flak helmet forged for the Sekite Warriors of the sanguinary warlord of Chaos."
	icon_state = "Sek_Helmet"
	item_state = "Sek_Helmet"


/obj/item/clothing/head/helmet/flak/chaos/sekite/masterwork
	name = "heavy flak helmet"
	desc = "A carapace helmet forged for the Sekite Warriors of the sanguinary warlord of Chaos."
	icon_state = "SekHelm2"
	item_state = "SekHelm2"
	disorientation = 0.5
	armor = list(
		melee = ARMOR_MELEE_FLAK+1,
		bullet = ARMOR_BALLISTIC_FLAK+1,
		laser = ARMOR_LASER_FLAK+1,
		energy = ARMOR_ENERGY_TEN,
		bio = ARMOR_BIO_THIRTY+10,
		rad = ARMOR_RAD_THIRTY+35,
		bomb = ARMOR_BOMB_TEN+10
	)

/obj/item/clothing/head/helmet/flak/chaos/renegade
	name = "renegade militia mask"
	desc = "Protects the head somewhat but the filter seems to be broken in the mask. Don't storm the trenches without it!"
	icon_state = "renegade_militia_mask"
	item_state = "renegade_militia_mask"
	body_parts_covered = FACE|EYES|HEAD
	flags_inv = HIDEEARS|BLOCKHEADHAIR
	slowdown_general = 0.008
	disorientation = 0.5
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_TEN,
		bio = ARMOR_BIO_THIRTY+20,
		rad = ARMOR_RAD_THIRTY+45,
		bomb = ARMOR_BOMB_TEN+10
	)

/obj/item/clothing/head/helmet/flak/chaos/tzeentch
	name = "strange mask"
	desc = "A hood with a mask resembling a beaked creature. It is stuffed internally with crude runes and markings, alongside odd symbolisms. The air around it feels thick, as if it is alive with whispers and unseen eyes."
	icon_state = "tzeecult1"
	item_state = "tzeecult1"
	flags_inv = HIDEMASK|HIDEEARS|HIDEFACE|BLOCKHEADHAIR
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+150
	armor = list( // Basing this off the tzeentch plating not robes. Cult helms provide supernatural protection without weight penalties.
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK+1,
		laser = ARMOR_LASER_FLAK+1,
		energy = ARMOR_ENERGY_TEN,
		bio = ARMOR_BIO_THIRTY+20,
		rad = ARMOR_RAD_THIRTY+30,
		bomb = ARMOR_BOMB_TEN+10
	)

/obj/item/clothing/head/helmet/flak/chaos/tzeentch/two
	icon_state = "tzeecult2"
	item_state = "tzeecult2"

/obj/item/clothing/head/helmet/flak/chaos/tzeentch/three
	icon_state = "tzeecult3"
	item_state = "tzeecult3"

/obj/item/clothing/head/helmet/flak/chaos/tzeentch/four
	icon_state = "tzeecult4"
	item_state = "tzeecult4"

/obj/item/clothing/head/helmet/flak/chaos/nurgle
	name = "rotting hood"
	desc = "A hood covered by all sorts of weird symbols with holes in it green from the mold on it...and that smell, you just can't take it"
	icon_state = "nurgh"
	item_state = "nurgh"
	flags_inv = HIDEMASK|HIDEEARS|HIDEFACE|BLOCKHEADHAIR
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+400
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_TEN,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED,
		bomb = ARMOR_BOMB_TEN+5
		)

/obj/item/clothing/head/helmet/flak/chaos/nurgle/alt3
	name = "mysterious hood"
	desc = "A filth hood rag"
	flags_inv = HIDEMASK|HIDEEARS|HIDEFACE|BLOCKHEADHAIR
	icon_state = "hood1"
	item_state = "hood1"

/obj/item/clothing/head/helmet/flak/chaos/nurgle/alt
	icon_state = "hood2"
	item_state = "hood2"

/obj/item/clothing/head/helmet/flak/chaos/nurgle/alt2
	icon_state = "hood3"
	item_state = "hood3"

// PILGRIMS AND MERCANTILE

/obj/item/clothing/head/helmet/pilgrimcap
	name = "pilgrim's hat"
	desc = "A fairly nice leather hat with a feather tucked into it."
	icon_state = "bardhat"
	item_state = "bardhat"
	flags_inv = null
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE-200
	min_cold_protection_temperature = HELMET_MIN_COLD_PROTECTION_TEMPERATURE+10
	max_pressure_protection = null
	slowdown_general = 0
	disorientation = 0
	armor = list(
		melee = ARMOR_MELEE_FLAK-3,
		bullet = ARMOR_BALLISTIC_FLAK-2,
		laser = ARMOR_LASER_FLAK-2,
		energy = 0,
		bio = 10,
		rad = 10,
		bomb = 5
	)
	valid_accessory_slots = null
	restricted_accessory_slots = null
	item_flags = ITEM_FLAG_THICKMATERIAL
	flags_inv = null
	w_class = ITEM_SIZE_SMALL

/obj/item/clothing/head/helmet/pilgrimcap/pleb
	name = "pleb hood"
	desc = "A disgusting hood covering a disgusting head"
	icon_state = "plebhood"
	item_state = "plebhood"
	flags_inv = HIDEMASK|HIDEEARS|HIDEFACE|BLOCKHEADHAIR

/obj/item/clothing/head/helmet/pilgrimcap/officer
	name = "officer's soft-cap"
	desc = "This cap belongs to a member of the Administratum."
	icon_state = "captain_hat"
	item_state = "captain_hat"

/obj/item/clothing/head/helmet/pilgrimcap/smokingcap
	name = "smoking cap"
	desc = "A fancy smoking cap with golden tassle."
	icon_state = "smokingc"
	item_state = "smokingc"

/obj/item/clothing/head/helmet/pilgrimcap/pillbox
	name = "pillbox hat"
	desc = "A proper smerd hat"
	icon_state = "pillbox"
	item_state = "pillbox"

/obj/item/clothing/head/helmet/pilgrimcap/bighat
	name = "big hat"
	desc = "A large, imposing hat."
	icon_state = "bighat"
	item_state = "bighat"

/obj/item/clothing/head/helmet/pilgrimcap/spookyhood
	name = "spooky hood"
	desc = "A menacing hood"
	icon_state = "keeper"
	item_state = "keeper"
	flags_inv = HIDEMASK|HIDEEARS|HIDEFACE|BLOCKHEADHAIR
	body_parts_covered = HEAD|FACE|EYES

/obj/item/clothing/head/helmet/pilgrimcap/medicae
	name = "practioner cap"
	desc = "Wouldn't want your hair to get messy now would we."
	icon_state = "prac_cap"
	item_state = "prac_cap"
	flags_inv = BLOCKHEADHAIR

/obj/item/clothing/head/helmet/pilgrimcap/scum
	name = "pimp hat"
	desc = "Pretty fly for a space guy."
	icon_state = "scum"
	item_state = "scum"

/obj/item/clothing/head/helmet/pilgrimcap/senturban
	name = "ornate turban"
	desc = "A turban woven from the finest of fabrics, plucked from the very depths of whatever vault your Trader may or may not have robbed. Fit for a king, or in this case a Seneschal."
	icon_state = "senturban"
	item_state = "senturban"
	cold_protection = HEAD
	flags_inv = BLOCKHEADHAIR

// PILGRIM HELMETS
/obj/item/clothing/head/helmet/pilgrimhelm
	name = "pilgrim's frontier hat"
	desc = "A dusty frontier hat -- heavily padded."
	icon_state = "sheriffhat"
	item_state = "sheriffhat"
	max_pressure_protection = null
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE
	body_parts_covered = HEAD
	flags_inv = null
	slowdown_general = 0.006 // Try to set slowdowns to be 10-20 percent of the armours roughly.
	disorientation = 0.5
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK-2,
		laser = ARMOR_LASER_FLAK-2,
		energy = ARMOR_ENERGY_TEN-5,
		bio = ARMOR_BIO_THIRTY-10,
		rad = ARMOR_RAD_THIRTY+10,
		bomb = ARMOR_BOMB_TEN
	)

/obj/item/clothing/head/helmet/pilgrimhelm/bountyhead
	name = "bounty hunter's helm"
	desc = "A well worn and dented helm."
	icon_state = "skullopen"
	item_state = "skullopen"
	body_parts_covered = HEAD|FACE|EYES
	flags_inv = BLOCKHEADHAIR
	slowdown_general = 0.0085
	disorientation = 0.5
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK-1,
		energy = ARMOR_ENERGY_TEN,
		bio = ARMOR_BIO_THIRTY,
		rad = ARMOR_RAD_THIRTY+15,
		bomb = ARMOR_BOMB_TEN
	)

/obj/item/clothing/head/helmet/pilgrimhelm/reconhood
	name = "armoured hood"
	desc = "an armoured flak-lamellar recon hood."
	icon_state = "reconhood"
	item_state = "reconhood"
	body_parts_covered = HEAD|FACE|EYES
	flags_inv = HIDEEARS|BLOCKHEADHAIR
	max_pressure_protection = SPACE_SUIT_MAX_PRESSURE
	slowdown_general = 0.008
	disorientation = 0.5
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK-1,
		energy = ARMOR_ENERGY_TEN,
		bio = ARMOR_BIO_THIRTY,
		rad = ARMOR_RAD_THIRTY+15,
		bomb = ARMOR_BOMB_TEN
	)

/obj/item/clothing/head/helmet/pilgrimhelm/preacher
	name = "preacher's crown"
	desc = "A striking and formidable hat worn by the Preachers of the Ecclesiarchy."
	icon_state = "preacherhat"
	item_state = "preacherhat"

/obj/item/clothing/head/helmet/pilgrimhelm/witch
	name = "witch hunter hat"
	desc = "An advanced flak-lamellar hat worn by ecclesiarchal witch hunters."
	slowdown_general = 0.008
	disorientation = 0.75
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK-1,
		energy = ARMOR_ENERGY_TEN,
		bio = ARMOR_BIO_THIRTY,
		rad = ARMOR_RAD_THIRTY+15,
		bomb = ARMOR_BOMB_TEN
	)

/obj/item/clothing/head/helmet/pilgrimhelm/hauberk
	name = "chainmail hood"
	desc = "A chainmail hood for your noggin."
	icon_state = "hauberkhood"
	item_state = "hauberkhood"
	flags_inv = HIDEEARS|BLOCKHEADHAIR
	slowdown_general = 0.003
	disorientation = 0.25
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK-3,
		laser = ARMOR_LASER_FLAK-3,
		energy = ARMOR_ENERGY_TEN-5,
		bio = ARMOR_BIO_THIRTY-10,
		rad = ARMOR_RAD_THIRTY-10,
		bomb = ARMOR_BOMB_TEN-7
	)

/obj/item/clothing/head/helmet/pilgrimhelm/metalvisor
	name = "metal visor"
	desc = "A heavy metal visor for protecting your face."
	icon_state = "leglad"
	item_state = "leglad"
	body_parts_covered = HEAD|FACE|EYES
	flags_inv = HIDEEARS|BLOCKHEADHAIR|HIDEMASK
	slowdown_general = 0.003
	disorientation = 0.25
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK-3,
		laser = ARMOR_LASER_FLAK-3,
		energy = ARMOR_ENERGY_TEN-5,
		bio = ARMOR_BIO_THIRTY-10,
		rad = ARMOR_RAD_THIRTY-10,
		bomb = ARMOR_BOMB_TEN-7
	)

/obj/item/clothing/head/helmet/pilgrimhelm/hevhelm
	name = "heavy metal helm"
	desc = "A feudal styled heavy plasteel helm with a visor."
	icon_state = "hevhelm"
	item_state = "hevhelm"
	body_parts_covered = HEAD|FACE|EYES
	flags_inv = HIDEMASK|HIDEEARS|BLOCKHEADHAIR
	slowdown_general = 0.009
	disorientation = 0.75
	armor = list(
		melee = ARMOR_MELEE_FLAK+1,
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK-1,
		energy = ARMOR_ENERGY_TEN-5,
		bio = ARMOR_BIO_THIRTY+10,
		rad = ARMOR_RAD_THIRTY+20,
		bomb = ARMOR_BOMB_TEN-7
	)

/obj/item/clothing/head/helmet/pilgrimhelm/hevhelm/alt
	name = "heavy metal helm"
	desc = "A heavy metal helmet that protects you from slashes, stabs and the occassional lasburn."
	icon_state = "knighthelm"
	item_state = "knighthelm"
	body_parts_covered = HEAD|FACE|EYES
	flags_inv = HIDEMASK|HIDEEARS|BLOCKHEADHAIR

/obj/item/clothing/head/helmet/pilgrimhelm/hevhelm/bone
	name = "bone-plate helm"
	desc = "A heavy bone-plasteel helmet forged from the carcass of a giant reptilian native to Samara."
	icon_state = "dragon"
	item_state = "dragon"

/obj/item/clothing/head/helmet/pilgrimhelm/hevhelm/siege
	name = "seige helm"
	desc = "Better than a baseball cap. But not by much."
	icon_state = "siege_helmet"
	item_state = "siege_helmet"
	flags_inv = HIDEEARS|BLOCKHEADHAIR

/obj/item/clothing/head/helmet/pilgrimhelm/hevhelm/feudal
	name = "feudal helmet"
	desc = "Better than a baseball cap. But not by much."
	icon_state = "newopen"
	item_state = "newopen"
	flags_inv = HIDEEARS|BLOCKHEADHAIR

/obj/item/clothing/head/helmet/pilgrimhelm/hevhelm/hero
	name = "closed helm"
	desc = "Better than a baseball cap. But not by much."
	icon_state = "hero0"
	item_state = "hero0"

/obj/item/clothing/head/helmet/pilgrimhelm/hevhelm/zealot
	name = "closed helm"
	desc = "Mainly made for melee protection."
	icon_state = "zealot"
	item_state = "zealot"


// MERCANTILE - helmets for retinue.dm
// MERCANTILE - helmets for retinue.dm
/obj/item/clothing/head/helmet/pilgrimhelm/flak
	name = "crude flak helm"
	desc = "A tough but crude flak helmet commonly used by mercenaries and gang-scum."
	icon_state = "marinehelm"
	item_state = "marinehelm"
	max_pressure_protection = SPACE_SUIT_MAX_PRESSURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE
	slowdown_general = 0.008
	body_parts_covered = HEAD
	disorientation = 0.5
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK-2,
		laser = ARMOR_LASER_FLAK-2,
		energy = ARMOR_ENERGY_TEN-5,
		bio = ARMOR_BIO_THIRTY-5,
		rad = ARMOR_RAD_THIRTY+10,
		bomb = ARMOR_BOMB_TEN-5
	)

/obj/item/clothing/head/helmet/pilgrimhelm/flak/metal
	name = "crude metal helm"
	desc = "A heavy metal helmet that protects you from slashes, stabs and the occassional lasburn."
	icon_state = "metalhelmet"
	item_state = "metalhelmet"

/obj/item/clothing/head/helmet/pilgrimhelm/flak/metalheavy
	name = "heavy flak helm"
	desc = "A heavy metal ganger helmet that protects you from slashes, stabs and the occassional lasburn."
	icon_state = "raider_combat_helmet"
	item_state = "raider_combat_helmet"
	body_parts_covered = HEAD|FACE|EYES
	slowdown_general = 0.0011
	disorientation = 0.75
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK-1,
		energy = ARMOR_ENERGY_TEN,
		bio = ARMOR_BIO_THIRTY,
		rad = ARMOR_RAD_THIRTY+15,
		bomb = ARMOR_BOMB_TEN
	)

/obj/item/clothing/head/helmet/pilgrimhelm/flak/foxhelm
	name = "armoured hood"
	desc = "A stealthy hood featuring overlaying ceramic plate inserts, designed for camouflage and protection, though it sacrifices practicality for style."
	icon_state = "foxhelm"
	item_state = "foxhelm"
	body_parts_covered = HEAD|FACE|EYES
	flags_inv = HIDEEARS|HIDEFACE|BLOCKHEADHAIR
	armor = list(
		melee = ARMOR_MELEE_CARAPACE-2,
		bullet = ARMOR_BALLISTIC_CARAPACE-2,
		laser = ARMOR_LASER_CARAPACE-2,
		energy = ARMOR_ENERGY_TEN+5,
		bio = ARMOR_BIO_THIRTY+20,
		rad = ARMOR_RAD_THIRTY+35,
		bomb = ARMOR_BOMB_THIRTY
	)

/obj/item/clothing/head/helmet/pilgrimhelm/flak/ranger
	name = "colonial ranger helm"
	desc = "An old combat helmet, custom fitted with a filtration mask and carapace exterior, the stalker who wore this knew their trade well."
	icon_state = "ranger_oldup"
	item_state = "ranger_oldup"
	body_parts_covered = HEAD|FACE|EYES
	max_pressure_protection = VOIDSUIT_MAX_PRESSURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+200
	slowdown_general = 0.005
	disorientation = 0.75
	armor = list(
		melee = ARMOR_MELEE_CARAPACE-1,
		bullet = ARMOR_BALLISTIC_CARAPACE-1,
		laser = ARMOR_LASER_CARAPACE-2,
		energy = ARMOR_ENERGY_TEN+15,
		bio = ARMOR_BIO_THIRTY+20,
		rad = ARMOR_RAD_THIRTY+35,
		bomb = ARMOR_BOMB_THIRTY
	)

/obj/item/clothing/head/helmet/pilgrimhelm/flak/ranger/alt
	name = "colonial ranger helm"
	desc = "An old combat helmet, custom fitted with a filtration mask and carapace exterior, the stalker who wore this knew their trade well."
	icon_state = "ranger1"
	item_state = "ranger1"

/obj/item/clothing/head/helmet/pilgrimhelm/flak/doomguy
	name = "ancient flak helm"
	desc = "An old flak helmet, custom fitted with a filtration mask and armored exterior. It seems supernaturally resistant to blunt trauma and heat..."
	icon_state = "doom"
	item_state = "doom"
	slowdown_general = 0.001
	disorientation = 0.5
	body_parts_covered = HEAD|FACE|EYES
	max_pressure_protection = VOIDSUIT_MAX_PRESSURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+300 // u know why
	armor = list(
		melee = ARMOR_MELEE_FLAK+1,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_FLAK+2,
		energy = ARMOR_ENERGY_TEN,
		bio = ARMOR_BIO_THIRTY,
		rad = ARMOR_RAD_THIRTY+15,
		bomb = ARMOR_BOMB_TEN
	)

/obj/item/clothing/head/helmet/pilgrimhelm/poweredhelm
	name = "ancient power helmet"
	desc = "A power helmet manufactured by some backwater tech-priest, the quality despite it's status as technical power armor is quite poor."
	icon_state = "lightpahelm"
	item_state = "lightpahelm"
	body_parts_covered = HEAD|FACE|EYES
	flags_inv = HIDEEARS|HIDEFACE|BLOCKHEADHAIR
	max_pressure_protection = RIG_MAX_PRESSURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+800
	slowdown_general = 0.010
	disorientation = 1 // Making the power helmet better then base PA since we don't have helmets for superior levels of PA like renegade.
	armor = list(
		melee = ARMOR_MELEE_POWER_ARM-1,
		bullet = ARMOR_BALLISTIC_POWER_ARMOUR-1,
		laser = ARMOR_LASER_POWER_ARMOUR-1,
		energy = ARMOR_ENERGY_TEN+15,
		bio = ARMOR_BIO_THIRTY+30,
		rad = ARMOR_RAD_THIRTY+40,
		bomb = ARMOR_BOMB_THIRTY+5
	)

/obj/item/clothing/head/helmet/pilgrimhelm/poweredhelm/berserker
	name = "xenos power helemt"
	desc = "A power helmet manufactured manufactured by unknown smiths of xenos origin, it radiates with incredible energy and a wrath that infests your very soul."
	icon_state = "berserkerhelm"
	item_state = "berserkerhelm"
	body_parts_covered = HEAD|FACE|EYES
	flags_inv = HIDEEARS|HIDEFACE|BLOCKHEADHAIR
	max_pressure_protection = RIG_MAX_PRESSURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+1500
	slowdown_general = 0.010
	disorientation = 1
	armor = list(
		melee = ARMOR_MELEE_POWER_ARM-1,
		bullet = ARMOR_BALLISTIC_POWER_ARMOUR,
		laser = ARMOR_LASER_POWER_ARMOUR,
		energy = ARMOR_ENERGY_TEN+20,
		bio = ARMOR_BIO_THIRTY+30,
		rad = ARMOR_RAD_THIRTY+50,
		bomb = ARMOR_BOMB_THIRTY+10
	)

/obj/item/clothing/head/helmet/pilgrimhelm/xenos
	name = "xenos helmet"
	desc = "A helmet forged by alien craftsmen, exhibiting remarkable resistance to thermal damage."
	icon_state = "soul"
	item_state = "soul"
	body_parts_covered = HEAD|FACE|EYES
	flags_inv = HIDEEARS|HIDEFACE|BLOCKHEADHAIR
	max_pressure_protection = VOIDSUIT_MAX_PRESSURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+200
	slowdown_general = 0.011
	disorientation = 1.25 // Very disorientating to wear. These xenos did not engage in melee and battled the necrons for centuries.
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK+1,
		laser = ARMOR_LASER_FLAK+2,
		energy = ARMOR_ENERGY_TEN+10,
		bio = ARMOR_BIO_THIRTY+10,
		rad = ARMOR_RAD_THIRTY+40,
		bomb = ARMOR_BOMB_TEN+10
	)

/obj/item/clothing/head/helmet/pilgrimhelm/xenos/power
	name = "xenos power armour helmet"
	desc = "A power armor helmet crafted by the alien forgemasters, exhibiting remarkable resistance to thermal damage."
	icon_state = "seolhelm"
	item_state = "seolhelm"
	body_parts_covered = HEAD|FACE|EYES
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+800
	slowdown_general = 0.015
	disorientation = 1.5
	armor = list(
		melee = ARMOR_MELEE_POWER_ARM-1,
		bullet = ARMOR_BALLISTIC_POWER_ARMOUR-1,
		laser = ARMOR_LASER_POWER_ARMOUR,
		energy = ARMOR_ENERGY_TEN+10,
		bio = ARMOR_BIO_THIRTY+10,
		rad = ARMOR_RAD_THIRTY+40,
		bomb = ARMOR_BOMB_TEN+10
	)
