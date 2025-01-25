// CULTISTS
// CULTISTS
// CULTISTS

/obj/item/clothing/suit/armor/grim/cult
	name = "heavy overcoat" // name a lot of generic armors this so only experienced players recognise them as chaos.
	desc = "A rough overcoat made from leather and poorly forged steel plates. It appears unremarkable at first glance."
	icon_state = "heretmil"
	item_state = "heretmil"
	body_parts_covered = LEGS|ARMS|HANDS|FEET|FULL_TORSO
	accessories = list(/obj/item/clothing/accessory/armor_plate/flak)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE
	slowdown_general = 0.04
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_FLAK-1,
		energy = ARMOR_ENERGY_TEN,
		bio = ARMOR_BIO_THIRTY-10,
		rad = ARMOR_RAD_THIRTY+5,
		bomb = ARMOR_BOMB_TEN+10
	)

/obj/item/clothing/suit/armor/grim/cult/lasduster
	name = "heavy duster"
	desc = "A strange duster, with tech-padding using mechanicus forged fire-retardant materials. Its snug fit hints at its mysterious origins."
	icon_state = "chemsis"
	item_state = "chemsis"
	body_parts_covered = LEGS|ARMS|HANDS|FEET|FULL_TORSO // Specialized anti-las armor cult armor.
	accessories = list(/obj/item/clothing/accessory/armor_plate/flakheavy)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE
	slowdown_general = 0.03
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK+1,
		energy = ARMOR_ENERGY_TEN,
		bio = ARMOR_BIO_THIRTY-5,
		rad = ARMOR_RAD_THIRTY+10,
		bomb = ARMOR_BOMB_TEN+10
	)

/obj/item/clothing/suit/armor/grim/cult/militia
	name = "heavy overcoat"
	desc = "A durable and heavy overcoat designed to protect against indirect blast and small arms fire."
	icon_state = "bluecoat"
	item_state = "bluecoat"
	w_class = ITEM_SIZE_LARGE
	body_parts_covered = LEGS|ARMS|HANDS|FEET|FULL_TORSO
	accessories = list(/obj/item/clothing/accessory/armor_plate/flak)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE
	slowdown_general = 0.035
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_TEN,
		bio = ARMOR_BIO_THIRTY+5,
		rad = ARMOR_RAD_THIRTY+15,
		bomb = ARMOR_BOMB_TEN+10
	)

/obj/item/clothing/suit/armor/grim/cult/cloak
	name = "mysterious cloak"
	desc = "A rugged black cloak, crafted from durable animal hide. Its origins and wearer’s intentions remain shrouded in mystery."
	icon_state = "bluecoat_sniper"
	item_state = "bluecoat_sniper"
	w_class = ITEM_SIZE_LARGE
	body_parts_covered = LEGS|ARMS|HANDS|FEET|FULL_TORSO
	accessories = list(/obj/item/clothing/accessory/armor_plate/flaklamellar)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE
	slowdown_general = 0.035
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_TEN,
		bio = ARMOR_BIO_THIRTY+5,
		rad = ARMOR_RAD_THIRTY+15,
		bomb = ARMOR_BOMB_TEN+10
	)

/obj/item/clothing/suit/armor/grim/cult/tzee
	name = "heavy overcoat"
	desc = "This robe is woven from an unnatural silk-like material, covered in crude runes and symbols. Being near it fills you with the eerie sensation of being observed."
	icon_state = "tzeecult"
	item_state = "tzeecult"
	body_parts_covered = LEGS|ARMS|HANDS|FEET|FULL_TORSO
	max_pressure_protection = SPACE_SUIT_MAX_PRESSURE
	accessories = list(/obj/item/clothing/accessory/armor_plate/tzeentch)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+150
	slowdown_general = 0.055
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK+1,
		laser = ARMOR_LASER_FLAK+1,
		energy = ARMOR_ENERGY_TEN+10,
		bio = ARMOR_BIO_THIRTY+10,
		rad = ARMOR_RAD_THIRTY+25,
		bomb = ARMOR_BOMB_TEN+15
	)

/obj/item/clothing/suit/armor/grim/cult/nurgle
	name = "heavy overcoat"
	desc = "A decaying leather coat smeared in filth, exuding a foul stench of rot, vomit, and waste. Even approaching it tests your willpower."
	icon_state = "nurgc"
	item_state = "nurgc"
	body_parts_covered = LEGS|ARMS|HANDS|FEET|FULL_TORSO
	max_pressure_protection = SPACE_SUIT_MAX_PRESSURE
	accessories = list(/obj/item/clothing/accessory/armor_plate/nurgle)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+100
	slowdown_general = 0.065
	armor = list(
		melee = ARMOR_MELEE_FLAK+1,
		bullet = ARMOR_BALLISTIC_FLAK+1,
		laser = ARMOR_LASER_FLAK+1,
		energy = ARMOR_ENERGY_TEN+10,
		bio = ARMOR_BIO_THIRTY+25,
		rad = ARMOR_RAD_THIRTY+25,
		bomb = ARMOR_BOMB_TEN+20
	)

/obj/item/clothing/suit/armor/grim/cult/nurgleheavy
	name = "heavy overcoat"
	desc = "This heavy leather coat reeks of filth, covered in the same nauseating mixture of rot and human waste. Its stench precedes its presence."
	icon_state = "nurgc"
	item_state = "nurgc"
	body_parts_covered = LEGS|ARMS|HANDS|FEET|FULL_TORSO
	max_pressure_protection = VOIDSUIT_MAX_PRESSURE
	accessories = list(/obj/item/clothing/accessory/armor_plate/nurgleheavy)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+150
	slowdown_general = 0.07
	armor = list(
		melee = ARMOR_MELEE_FLAK+2,
		bullet = ARMOR_BALLISTIC_FLAK+2,
		laser = ARMOR_LASER_FLAK+2,
		energy = ARMOR_ENERGY_TEN+15,
		bio = ARMOR_BIO_THIRTY+35,
		rad = ARMOR_RAD_THIRTY+35,
		bomb = ARMOR_BOMB_TEN+30
	)

/obj/item/clothing/suit/armor/grim/cult/renegade
	name = "renegade armour"
	desc = "Makeshift steel armor, while not refined, it will protect you vital organs. It has strange marks carved into it"
	icon_state = "renegade_militia_armor"
	item_state = "renegade_militia_armor"
	body_parts_covered = LEGS|ARMS|HANDS|FEET|FULL_TORSO
	max_pressure_protection = SPACE_SUIT_MAX_PRESSURE
	accessories = list(/obj/item/clothing/accessory/armor_plate/flak)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+35
	slowdown_general = 0.03
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK-1,
		energy = ARMOR_ENERGY_TEN,
		bio = ARMOR_BIO_THIRTY,
		rad = ARMOR_RAD_THIRTY,
		bomb = ARMOR_BOMB_TEN
	)

/obj/item/clothing/suit/armor/grim/cult/bloodpact
	name = "bloodpact armor"
	desc = "Makeshift steel armor, while not refined, it will protect you vital organs. It has strange marks carved into it devoted to Khorne."
	icon_state = "BP_Armor"
	item_state = "BP_Armor"
	body_parts_covered = LEGS|ARMS|HANDS|FEET|FULL_TORSO
	max_pressure_protection = SPACE_SUIT_MAX_PRESSURE
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapaceheavy) // Bloodpact are heavily armoured shock troops.
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+35
	slowdown_general = 0.045
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_FLAK+1,
		energy = ARMOR_ENERGY_TEN,
		bio = ARMOR_BIO_THIRTY+5,
		rad = ARMOR_RAD_THIRTY+10,
		bomb = ARMOR_BOMB_TEN
	)

/obj/item/clothing/suit/armor/grim/cult/bloodpact/broken
	name = "damaged bloodpact armor"
	desc = "Makeshift steel armor, while not refined, it will protect you vital organs. It has strange marks carved into it devoted to Khorne."
	body_parts_covered = LEGS|ARMS|HANDS|FEET|FULL_TORSO
	max_pressure_protection = SPACE_SUIT_MAX_PRESSURE
	accessories = list(/obj/item/clothing/accessory/armor_plate/flakheavy)
	slowdown_general = 0.04
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK-2,
		laser = ARMOR_LASER_FLAK-2,
		energy = ARMOR_ENERGY_TEN-2,
		bio = ARMOR_BIO_THIRTY+5,
		rad = ARMOR_RAD_THIRTY+10,
		bomb = ARMOR_BOMB_TEN
	)

/obj/item/clothing/suit/armor/grim/cult/sekite
	name = "sekite armour"
	desc = "War torn and suited to savage needs. This is the armor of a Sekite warrior. It has certainly seen blood flown upon it."
	icon_state = "Sek_Armor"
	item_state = "Sek_Armor"
	body_parts_covered = LEGS|ARMS|HANDS|FEET|FULL_TORSO
	max_pressure_protection = SPACE_SUIT_MAX_PRESSURE
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapace)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+35
	slowdown_general = 0.047
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK+1,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_TEN,
		bio = ARMOR_BIO_THIRTY+5,
		rad = ARMOR_RAD_THIRTY+1,
		bomb = ARMOR_BOMB_TEN
	)

/obj/item/clothing/suit/armor/grim/cult/sekite/broken
	name = "damaged sekite armour"
	desc = "War torn and suited to savage needs. This is the armor of a Sekite warrior. It has certainly seen blood flown upon it."
	icon_state = "Sek_Armor"
	item_state = "Sek_Armor"
	accessories = list(/obj/item/clothing/accessory/armor_plate/flaklamellar)
	slowdown_general = 0.045
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK-2,
		laser = ARMOR_LASER_FLAK-2,
		energy = ARMOR_ENERGY_TEN-2,
		bio = ARMOR_BIO_THIRTY+5,
		rad = ARMOR_RAD_THIRTY+1,
		bomb = ARMOR_BOMB_TEN
	)

// ECCLESIARCHY
// ECCLESIARCHY
// ECCLESIARCHY

/obj/item/clothing/suit/armor/sister/sacredrosepower
	name = "sacred rose power armour"
	desc = "The Sacred and holy Power Armour adorned by Battle Sister of the Order Of The Sacred Rose, It's illuminate the field with it glorious light, Being near it make you feels safer and secured."
	icon_state = "ooml_old"
	item_state = "sister"
	w_class = ITEM_SIZE_GARGANTUAN
	flags_inv = HIDEJUMPSUIT
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HANDS
	max_pressure_protection = RIG_MAX_PRESSURE
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE +1500
	slowdown_general = 0.1 // Slightly faster then inqisitorial, these relics are icons to the sisters and treated as extensions of the emperor.
	armor = list(
		melee = ARMOR_MELEE_POWER_ARM,
		bullet = ARMOR_BALLISTIC_POWER_ARMOUR,
		laser = ARMOR_LASER_POWER_ARMOUR,
		energy = ARMOR_ENERGY_TEN+55,
		bio = ARMOR_BIO_THIRTY+84,
		rad = ARMOR_RAD_THIRTY+86,
		bomb = ARMOR_BOMB_THIRTY+20
	)

/obj/item/clothing/suit/armor/sister/martyredpower
	name = "martyred power armour"
	desc = "The Sacred and holy Power Armour adorned by Battle Sister of the Order Of Our Martyred Lady. Being near it make you feels safer and secured."
	icon_state = "mlsister"
	item_state = "mlsister"
	w_class = ITEM_SIZE_GARGANTUAN
	flags_inv = HIDEJUMPSUIT
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HANDS
	max_pressure_protection = RIG_MAX_PRESSURE
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE +1500
	slowdown_general = 0.1
	armor = list(
		melee = ARMOR_MELEE_POWER_ARM,
		bullet = ARMOR_BALLISTIC_POWER_ARMOUR,
		laser = ARMOR_LASER_POWER_ARMOUR,
		energy = ARMOR_ENERGY_TEN+55,
		bio = ARMOR_BIO_THIRTY+84,
		rad = ARMOR_RAD_THIRTY+86,
		bomb = ARMOR_BOMB_THIRTY+20
	)

/obj/item/clothing/suit/armor/sister/bloodyrosepower
	name = "bloody rose power armour"
	desc = "The blood red power armor of The Order of the Bloody Rose."
	icon_state = "brsister"
	item_state = "brsister"
	w_class = ITEM_SIZE_GARGANTUAN
	flags_inv = HIDEJUMPSUIT
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HANDS
	max_pressure_protection = RIG_MAX_PRESSURE
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE +1500
	slowdown_general = 0.1
	armor = list(
		melee = ARMOR_MELEE_POWER_ARM,
		bullet = ARMOR_BALLISTIC_POWER_ARMOUR,
		laser = ARMOR_LASER_POWER_ARMOUR,
		energy = ARMOR_ENERGY_TEN+55,
		bio = ARMOR_BIO_THIRTY+84,
		rad = ARMOR_RAD_THIRTY+86,
		bomb = ARMOR_BOMB_THIRTY+20
	)

/obj/item/clothing/suit/armor/sister/novitae
	name = "novitae ceramite armor"
	desc = "The Ancient and Deconsecrated Ceramite Armour adorned by Novice Militants during their training in an ecclesiarchal' Monastarium. Stripped of almost all iconography and with damaged plating. It has scriptures across it's surface, recounting the triumph and martyrdom of countless saints."
	icon_state = "ooml"
	item_state = "ooml"
	w_class = ITEM_SIZE_GARGANTUAN
	flags_inv = HIDEJUMPSUIT
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HANDS
	max_pressure_protection = VOIDSUIT_MAX_PRESSURE
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE +1100
	slowdown_general = 0.1 // Same speed as sister but trash stats compared.
	armor = list(
		melee = ARMOR_MELEE_POWER_ARM-1,
		bullet = ARMOR_BALLISTIC_POWER_ARMOUR-2, // 1 point above carapace
		laser = ARMOR_LASER_POWER_ARMOUR-2,
		energy = ARMOR_ENERGY_TEN+35,
		bio = ARMOR_BIO_THIRTY+64,
		rad = ARMOR_RAD_THIRTY+66,
		bomb = ARMOR_BOMB_THIRTY+10
	)

/obj/item/clothing/suit/armor/sister/repentia
	name = "repentia carapace armour"
	desc = "The tattered garb of a penitent sister of battle. The minimal carapace of armor is a symbol of their faith on the Repentia's deathmarch towards a glorious end."
	icon_state = "repentia_chest"
	item_state = "repentia_chest"
	flags_inv = HIDEJUMPSUIT
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HANDS
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE
	slowdown_general = 0.065
	armor = list(
		melee = ARMOR_MELEE_CARAPACE-1,
		bullet = ARMOR_BALLISTIC_CARAPACE-1,
		laser = ARMOR_LASER_CARAPACE-1,
		energy = ARMOR_ENERGY_TEN+15,
		bio = ARMOR_BIO_THIRTY+14,
		rad = ARMOR_RAD_THIRTY+16,
		bomb = ARMOR_BOMB_TEN +15
	)

/obj/item/clothing/suit/armor/sister/hospitaller
	name = "sister hospitaller's suit"
	desc = "The holy garments marking the wearer as sister hospitaller."
	icon_state = "hospitaller"
	item_state = "hospitaller"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HANDS
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE-300
	slowdown_general = 0.05
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK+1,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_TEN+10,
		bio = ARMOR_BIO_THIRTY+50,
		rad = ARMOR_RAD_THIRTY+60,
		bomb = ARMOR_BOMB_TEN+20
		)

/obj/item/clothing/suit/armor/sister/disciplus
	name = "sister discipulus's suit"
	desc = "The holy garments marking the wearer as a discipulus hospitaller"
	icon_state = "hospitallerold"
	item_state = "hospitallerold"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HANDS
	accessories = list(/obj/item/clothing/accessory/armor_plate/paddingmech)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE-300
	slowdown_general = 0.045
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_TEN+10,
		bio = ARMOR_BIO_THIRTY+40,
		rad = ARMOR_RAD_THIRTY+50,
		bomb = ARMOR_BOMB_TEN+10
		)

/obj/item/clothing/suit/armor/grim/medicae
	name = "practioner robes"
	desc = "Worn by practioners and other surgoens."
	icon_state = "prac_robes"
	item_state = "prac_robes"
	body_parts_covered = LEGS|ARMS|HANDS|FEET|FULL_TORSO
	accessories = list(/obj/item/clothing/accessory/armor_plate/paddingmech)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE-300
	slowdown_general = 0.04
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK-2,
		energy = ARMOR_ENERGY_TEN+10,
		bio = ARMOR_BIO_THIRTY+30,
		rad = ARMOR_RAD_THIRTY+40,
		bomb = ARMOR_BOMB_TEN+5
		)

/obj/item/clothing/suit/armor/grim/ministorumrobes
	name = "ministorum robes"
	desc = "Gorgeous robes littered  with holy seals and writs. Smells faintly of incense. This one has been fitted with a special hidden armor plate for extra protection."
	icon_state = "ministorum_priest"
	item_state = "ministorum_priest"
	body_parts_covered = LEGS|ARMS|HANDS|FEET|FULL_TORSO
	accessories = list(/obj/item/clothing/accessory/armor_plate/flak)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE-150
	slowdown_general = 0.055
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK-2,
		energy = ARMOR_ENERGY_TEN-1,
		bio = ARMOR_BIO_THIRTY+15,
		rad = ARMOR_RAD_THIRTY+15,
		bomb = ARMOR_BOMB_TEN+10
	)

/obj/item/clothing/suit/armor/grim/witch
	name = "witch hunter's gambeson"
	desc = "The heavy flak gambeson chosen by the fanatical Witch Hunters of the Ecclesiarchy, designed to protect against all possible threats both heretical and daemonic."
	icon_state = "preacherarmor"
	item_state = "preacherarmor"
	body_parts_covered = LEGS|FEET|ARMS|HANDS|FULL_TORSO
	accessories = list(/obj/item/clothing/accessory/armor_plate/flakheavy)
	max_pressure_protection = SPACE_SUIT_MAX_PRESSURE
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE
	slowdown_general = 0.05 // Basically cadian heavy flak but worse stats and temp protection.
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK+1,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_TEN,
		bio = ARMOR_BIO_THIRTY,
		rad = ARMOR_RAD_THIRTY,
		bomb = ARMOR_BOMB_TEN
	)

/obj/item/clothing/suit/armor/grim/feudal
	name = "heavy mantle"
	desc = "An imperial cult mantle with heavy flak plates blessed by the Ecceliarchy to protect the wearer from threats to aid in protecting the faithful and to repel the heretic."
	icon_state = "zealot"
	item_state = "zealot"
	body_parts_covered = LEGS|ARMS|HANDS|FEET|FULL_TORSO
	accessories = list(/obj/item/clothing/accessory/armor_plate/flakheavy)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE-150
	slowdown_general = 0.035 // heavy crude armor.
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK-2,
		energy = ARMOR_ENERGY_TEN-1,
		bio = ARMOR_BIO_THIRTY-5,
		rad = ARMOR_RAD_THIRTY+5,
		bomb = ARMOR_BOMB_TEN+10
	)

/obj/item/clothing/suit/armor/feudal/cuirass
	name = "plate cuirass"
	desc = "An plasteel-alloy breastplate forged by local hands, it's craftsmanship is questionable but the exotic alloy is remarkbly unique to the ghoul stars."
	icon_state = "trinet"
	item_state = "trinet"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HANDS
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE // Not designed for cold.
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE-100
	slowdown_general = 0.06
	armor = list(
		melee = ARMOR_MELEE_FLAK+1,
		bullet = ARMOR_BALLISTIC_FLAK-2,
		laser = ARMOR_LASER_FLAK-1,
		energy = ARMOR_ENERGY_TEN,
		bio = ARMOR_BIO_THIRTY-10,
		rad = ARMOR_RAD_THIRTY-20,
		bomb = ARMOR_BOMB_TEN-7
	)

/obj/item/clothing/suit/armor/feudal/cuirass/shadowcurse
	name = "Cursed Robes."
	desc = "DO YOU SEE ME."
	icon_state = "shadow"
	item_state = "shadow"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HANDS|HEAD
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+1000
	armor = list(
		melee = ARMOR_MELEE_POWER_ARM,
		bullet = ARMOR_BALLISTIC_POWER_ARMOUR,
		laser = ARMOR_LASER_POWER_ARMOUR,
		energy = ARMOR_ENERGY_SHIELDED,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED,
		bomb = ARMOR_BOMB_SHIELDED
	)

/obj/item/clothing/suit/armor/feudal/cuirass/shadowcurse/mob_can_equip(mob/living/carbon/human/user, slot)
	if(user.get_equipped_item(slot_head))
		to_chat(user, "You are already wearing headgear, you cannot wear the tech priest robes over it.")
		return FALSE
	if(slot == slot_head)
		to_chat(user, "Your mechanicus robes already cover your head, you cannot wear a helmet.")
		return FALSE
	return ..()

/obj/item/clothing/suit/armor/feudal/cuirass/shadowcurse/equipped(mob/living/M)
	M.adjustBruteLoss(100)
	if(needs_vision_update())
		update_vision()
	return ..()

/obj/item/clothing/suit/armor/feudal/breastplate
	name = "breastplate"
	desc = "A rough-hewn plasteel-alloy breastplate, its craftsmanship dubious, yet the exotic xenos alloy grants it unexpected resilience."
	icon_state = "bmerc2"
	item_state = "bmerc2"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HANDS
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE-100
	slowdown_general = 0.06
	armor = list(
		melee = ARMOR_MELEE_FLAK+1,
		bullet = ARMOR_BALLISTIC_FLAK-2,
		laser = ARMOR_LASER_FLAK-1,
		energy = ARMOR_ENERGY_TEN,
		bio = ARMOR_BIO_THIRTY-10,
		rad = ARMOR_RAD_THIRTY-20,
		bomb = ARMOR_BOMB_TEN-7
	)

/obj/item/clothing/suit/armor/feudal/heavyplate
	name = "heavy breastplate"
	desc = "An plasteel-alloy heavy plate cuirass forged by local hands, it's craftsmanship is remarkable and benefits from the exotic alloy unique to the ghoul stars."
	icon_state = "iplate"
	item_state = "iplate"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HANDS
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE-100
	slowdown_general = 0.065
	armor = list(
		melee = ARMOR_MELEE_FLAK+1,
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK-1,
		energy = ARMOR_ENERGY_TEN,
		bio = ARMOR_BIO_THIRTY-5,
		rad = ARMOR_RAD_THIRTY-10,
		bomb = ARMOR_BOMB_TEN-7
	)

/obj/item/clothing/suit/armor/feudal/fullplate
	name = "witch hunter's half-plate armour"
	desc = "An plasteel-alloy half-plate cuirass forged by local hands, it's craftsmanship is remarkable and benefits from the exotic alloy unique to the ghoul stars."
	icon_state = "templar"
	item_state = "templar"
	w_class = ITEM_SIZE_GARGANTUAN
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HANDS
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE-100
	slowdown_general = 0.07
	armor = list(
		melee = ARMOR_MELEE_FLAK+1,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_TEN,
		bio = ARMOR_BIO_THIRTY,
		rad = ARMOR_RAD_THIRTY,
		bomb = ARMOR_BOMB_TEN-7
	)

/obj/item/clothing/suit/armor/feudal/holyplate
	name = "frateris half-plate armour"
	desc = "An plasteel-alloy heavy plate cuirass forged by local hands, it's craftsmanship is remarkable and benefits from the exotic alloy unique to the ghoul stars."
	icon_state = "knight_hospitaller"
	item_state = "knight_hospitaller"
	w_class = ITEM_SIZE_GARGANTUAN
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HANDS
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE-100
	slowdown_general = 0.07
	armor = list(
		melee = ARMOR_MELEE_FLAK+1,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_TEN,
		bio = ARMOR_BIO_THIRTY,
		rad = ARMOR_RAD_THIRTY,
		bomb = ARMOR_BOMB_TEN-7
	)

/obj/item/clothing/suit/armor/feudal/holyplate/brigandine
	name = "frateris brigandine"
	desc = "A heavy set of plated leather overlayn with flak plates to protect against slug rounds and the occasional rock, lighter then standard half-plate but less protective."
	icon_state = "brigandine"
	item_state = "brigandine"
	slowdown_general = 0.06
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_FLAK-1,
		energy = ARMOR_ENERGY_TEN,
		bio = ARMOR_BIO_THIRTY,
		rad = ARMOR_RAD_THIRTY,
		bomb = ARMOR_BOMB_TEN-7
	)

/obj/item/clothing/suit/armor/feudal/hauberkheavy
	name = "heavy hauberk"
	desc = "A chain hauberk worn over padded cloth, offering comfort and reliable protection against slashing attacks."
	icon_state = "hauberk"
	item_state = "hauberk"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HANDS
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE-100
	slowdown_general = 0.045
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK-2,
		laser = ARMOR_LASER_FLAK-2,
		energy = ARMOR_ENERGY_TEN,
		bio = ARMOR_BIO_THIRTY-10,
		rad = ARMOR_RAD_THIRTY-10,
		bomb = ARMOR_BOMB_TEN-7
	)

/obj/item/clothing/suit/armor/grim/tribal
	name = "tribal armor"
	desc = "Ritual combat armor worn by the nomadic clansmen predating the colony."
	icon_state = "tribal_armor"
	item_state = "tribal_armor"
	body_parts_covered = LEGS|ARMS|HANDS|FEET|FULL_TORSO
	accessories = list(/obj/item/clothing/accessory/armor_plate/flaktribal)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE-150
	slowdown_general = 0.032
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK-2,
		energy = ARMOR_ENERGY_TEN-1,
		bio = ARMOR_BIO_THIRTY-5,
		rad = ARMOR_RAD_THIRTY+15,
		bomb = ARMOR_BOMB_TEN+10
	)

/obj/item/clothing/suit/armor/grim/tribal/carapace
	name = "tribal armor"
	desc = "Ritual combat armor worn by the nomadic clansmen predating the colony. This has been forged from carapace..."
	icon_state = "exile"
	item_state = "exile"
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapace)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE-150
	slowdown_general = 0.045
	armor = list(
		melee = ARMOR_MELEE_FLAK+1,
		bullet = ARMOR_BALLISTIC_FLAK+1,
		laser = ARMOR_LASER_FLAK+2,
		energy = ARMOR_ENERGY_TEN+1,
		bio = ARMOR_BIO_THIRTY+5,
		rad = ARMOR_RAD_THIRTY+25,
		bomb = ARMOR_BOMB_TEN+20
	)

/obj/item/clothing/suit/armor/grim/tribal/plate
	name = "bone-carapace armor"
	desc = "Crafted from the bones of a massive local beast forged together with scavenged plasteel, this primitive yet sturdy armor offers surprising resilience against the dangers of the wild."
	icon_state = "bonearmor"
	item_state = "bonearmor"
	w_class = ITEM_SIZE_GARGANTUAN
	body_parts_covered = LEGS|ARMS|HANDS|FEET|FULL_TORSO
	accessories = list(/obj/item/clothing/accessory/armor_plate/flaktribal)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE-150
	slowdown_general = 0.04
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK-1,
		energy = ARMOR_ENERGY_TEN-1,
		bio = ARMOR_BIO_THIRTY,
		rad = ARMOR_RAD_THIRTY+25,
		bomb = ARMOR_BOMB_TEN+15
	)

// PILGRIMS & SCUM
// PILGRIMS & SCUM
// PILGRIMS & SCUM

/obj/item/clothing/suit/armor/grim/pilgrim
	name = "tattered robes"
	desc = "Tattered, filthy robes worn by the lowest dregs of society, offering little more than shame and the stink of squalor."
	icon_state = "slaverobe"
	item_state = "slaverobe"
	w_class = ITEM_SIZE_LARGE
	body_parts_covered = LEGS|ARMS|HANDS|FEET|FULL_TORSO
	accessories = list(/obj/item/clothing/accessory/armor_plate/paddingheavy)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE-350
	slowdown_general = 0.024
	armor = list(
		melee = ARMOR_MELEE_PRIMAL,
		bullet = ARMOR_BALLISTIC_PRIMAL+1,
		laser = ARMOR_LASER_PRIMAL+1,
		energy = ARMOR_ENERGY_TEN-3,
		bio = ARMOR_BIO_THIRTY,
		rad = ARMOR_RAD_THIRTY+10,
		bomb = ARMOR_BOMB_TEN-4
		)

/obj/item/clothing/suit/armor/grim/pilgrim/musician
	name = "musician's garb"
	desc = "A colorful yet somewhat tattered uniform."
	icon_state = "xomrobe"
	item_state = "xomrobe"
	body_parts_covered = LEGS|ARMS|HANDS|FEET|FULL_TORSO
	accessories = list(/obj/item/clothing/accessory/armor_plate/paddingheavy)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE-300
	slowdown_general = 0.02
	armor = list(
		melee = ARMOR_MELEE_PRIMAL,
		bullet = ARMOR_BALLISTIC_PRIMAL+1,
		laser = ARMOR_LASER_PRIMAL+1,
		energy = ARMOR_ENERGY_TEN-3,
		bio = ARMOR_BIO_THIRTY,
		rad = ARMOR_RAD_THIRTY+10,
		bomb = ARMOR_BOMB_TEN-4
		)

/obj/item/clothing/suit/armor/grim/pilgrim/magister
	name = "ornate robes"
	desc = "Elegant clothing for a servant of the imperium..."
	icon_state = "robes"
	item_state = "robes"
	body_parts_covered = LEGS|ARMS|HANDS|FEET|FULL_TORSO
	accessories = list(/obj/item/clothing/accessory/armor_plate/flaklamellar)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE-150
	slowdown_general = 0.04
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_FLAK-1,
		energy = ARMOR_ENERGY_TEN-3,
		bio = ARMOR_BIO_THIRTY,
		rad = ARMOR_RAD_THIRTY+20,
		bomb = ARMOR_BOMB_TEN+10
		)


/obj/item/clothing/suit/armor/grim/pilgrim/merchant
	name = "mercantile suit"
	desc = "Elegant clothing for a wealthy trader."
	icon_state = "male2"
	item_state = "male2"
	body_parts_covered = LEGS|ARMS|HANDS|FEET|FULL_TORSO
	accessories = list(/obj/item/clothing/accessory/armor_plate/flaklamellar) // Trader's got monei
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE-300
	slowdown_general = 0.02
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK-2,
		energy = ARMOR_ENERGY_TEN,
		bio = ARMOR_BIO_THIRTY-10,
		rad = ARMOR_RAD_THIRTY, // no rads for the money man
		bomb = ARMOR_BOMB_TEN
		)


/obj/item/clothing/suit/armor/grim/pilgrim/merchant/administratum
	name = "Administratum Robes"
	icon_state = "ordinate"
	item_state = "ordinate"
	desc = "Bulky layered robes, belonging to a high-ranking member of the Adpetus Administratum."

/obj/item/clothing/head/helmet/guardcap/ordinate
	name = "Ordinate Hat"
	desc = "A humble hat for the administratum ordinate."
	icon_state = "ordinate"
	item_state = "ordinate"

/obj/item/clothing/suit/armor/grim/pilgrim/penitent
	name = "ragged robes"
	desc = "Stinking, torn robes"
	icon_state = "grosthrobe"
	item_state = "grosthrobe"
	body_parts_covered = LEGS|ARMS|HANDS|FEET|FULL_TORSO
	accessories = list(/obj/item/clothing/accessory/armor_plate/paddingheavy)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE-300
	slowdown_general = 0.01
	armor = list(
		melee = ARMOR_MELEE_PRIMAL,
		bullet = ARMOR_BALLISTIC_PRIMAL+1,
		laser = ARMOR_LASER_PRIMAL+1,
		energy = ARMOR_ENERGY_TEN-3,
		bio = ARMOR_BIO_THIRTY,
		rad = ARMOR_RAD_THIRTY+10,
		bomb = ARMOR_BOMB_TEN-4
		)

/obj/item/clothing/suit/armor/grim/pilgrim/innapron
	name = "heavy overcoat"
	desc = "An amasec and caff stained apron."
	icon_state = "mapron"
	item_state = "mapron"
	body_parts_covered = LEGS|ARMS|HANDS|FEET|FULL_TORSO
	accessories = list(/obj/item/clothing/accessory/armor_plate/paddingheavy)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE-300
	slowdown_general = 0.02
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK-2,
		energy = ARMOR_ENERGY_TEN,
		bio = ARMOR_BIO_THIRTY+5,
		rad = ARMOR_RAD_THIRTY+10, // no rads for the money man
		bomb = ARMOR_BOMB_TEN
		)

/obj/item/clothing/suit/armor/grim/pilgrim/stalker
	name = "light overcoat"
	desc = "A red hunters uniform"
	icon_state = "chokha"
	item_state = "chokha"
	body_parts_covered = LEGS|ARMS|HANDS|FEET|FULL_TORSO
	accessories = list(/obj/item/clothing/accessory/armor_plate/flaklamellar)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE-300
	slowdown_general = 0.03
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK-1, // Good overall defense but slow.
		laser = ARMOR_LASER_FLAK-1,
		energy = ARMOR_ENERGY_TEN,
		bio = ARMOR_BIO_THIRTY-10,
		rad = ARMOR_RAD_THIRTY+10,
		bomb = ARMOR_BOMB_TEN
		)

/obj/item/clothing/suit/armor/grim/pilgrim/pathfinder
	name = "light overcoat"
	desc = "A pathfinder's vestaments"
	icon_state = "sherpa"
	item_state = "sherpa"
	body_parts_covered = LEGS|ARMS|HANDS|FEET|FULL_TORSO
	accessories = list(/obj/item/clothing/accessory/armor_plate/paddingheavy)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE-300
	slowdown_general = 0.025
	armor = list(
		melee = ARMOR_MELEE_FLAK, // Good melee.
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK-2,
		energy = ARMOR_ENERGY_TEN,
		bio = ARMOR_BIO_THIRTY-10,
		rad = ARMOR_RAD_THIRTY+10,
		bomb = ARMOR_BOMB_TEN
		)

/obj/item/clothing/suit/armor/grim/hiver
	name = "slum jacket"
	desc = "A heavy leather jacket."
	icon_state = "wornmfp"
	item_state = "wornmfp"
	body_parts_covered = LEGS|ARMS|HANDS|FEET|FULL_TORSO
	accessories = list(/obj/item/clothing/accessory/armor_plate/paddingheavy)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE-300
	slowdown_general = 0.01
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK-2,
		laser = ARMOR_LASER_FLAK-2,
		energy = ARMOR_ENERGY_TEN,
		bio = ARMOR_BIO_THIRTY+10,
		rad = ARMOR_RAD_THIRTY+20,
		bomb = ARMOR_BOMB_TEN
		)

/obj/item/clothing/suit/armor/grim/hiver/leatherjacket
	name = "leather jacket"
	desc = "A light jacket worn by gangers."
	icon_state = "biker_jacket"
	item_state = "biker_jacket"

/obj/item/clothing/suit/armor/grim/hiver/slumcoat
	name = "slum coat"
	desc = "A heavy leather coat made of a strange leather, it's incredibly durable."
	icon_state = "ghostechoe"
	item_state = "ghostechoe"

/obj/item/clothing/suit/armor/grim/hiver/trenchcoat
	name = "trench coat"
	desc = "A trench coat underpiece to wear with your trench coat!"
	icon_state = "towntrench_special"
	item_state = "towntrench_special"

/obj/item/clothing/suit/armor/grim/hiver/carapace
	name = "carapace jacket"
	desc = "The carapace patrol jacket was once worn by some frontier marshal of an unnamed world... it looks centuries old."
	icon_state = "towntrench_heavy"
	item_state = "towntrench_heavy"
	w_class = ITEM_SIZE_HUGE
	body_parts_covered = LEGS|ARMS|HANDS|FEET|FULL_TORSO
	slowdown_general = 0.035 // Light due to missing parts of the armor.
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapace)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+300
	armor = list(
		melee = ARMOR_MELEE_CARAPACE-1,
		bullet = ARMOR_BALLISTIC_FLAK+1,
		laser = ARMOR_LASER_FLAK+1,
		energy = ARMOR_ENERGY_TEN-2,
		rad = ARMOR_RAD_THIRTY+10,
		bio = ARMOR_BIO_THIRTY,
		bomb = ARMOR_BOMB_TEN-5,
	)

/obj/item/clothing/suit/armor/grim/hiver/scum
	name = "Mysterious Garb"
	desc = "These clothes belong to the most mystical of folk."
	icon_state = "gothcoat"
	item_state = "gothcoat"

/obj/item/clothing/suit/armor/grim/hiver/leather
	name = "Leather Armor"
	desc = "Shoddy armor sewn from shafra leather, it protects you more from the cold then anything else."
	icon_state = "leatherarmor"
	item_state = "leatherarmor"

/obj/item/clothing/suit/armor/grim/hiver/smuggler
	name = "light overcoat"
	desc = "A jacket that only the shadiest of characters would wear, this one has two light flak armor plates glued to it's internal pockets."
	icon_state = "scum"
	item_state = "scum"
