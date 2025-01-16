//Modular plate carriers
// Flak armor only protects limbs. Requires plate for further protection. Bodyglove accessories protect both arms/legs. Leg/Arm Guard and Plate accessories all use the same CHEST slot to avoid stacking armor.
/obj/item/clothing/suit/armor/grim
	name = "flak jacket"
	desc = "A lightweight flak plate carrier vest. It can be equipped with armor plates, but provides no protection of its own."
	icon_state = "pcarrier"
	valid_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA, ACCESSORY_SLOT_ARMOR_CHEST, ACCESSORY_SLOT_ARMOR_ARMS, ACCESSORY_SLOT_ARMOR_LEGS, ACCESSORY_SLOT_ARMOR_STORAGE, ACCESSORY_SLOT_ARMOR_MISC)
	restricted_accessory_slots = list(ACCESSORY_SLOT_ARMOR_CHEST, ACCESSORY_SLOT_ARMOR_ARMS, ACCESSORY_SLOT_ARMOR_LEGS, ACCESSORY_SLOT_ARMOR_STORAGE)
	blood_overlay_type = "armor"
	accessories = list(/obj/item/clothing/accessory/armor_plate/paddingheavy)
	flags_inv = CLOTHING_BULKY // DO NOT USE THIS IF YOU DONT KNOW HOW PLATE CARRIER CODE WORKS
	item_flags = ITEM_FLAG_THICKMATERIAL | ITEM_FLAG_INVALID_FOR_CHAMELEON
	body_parts_covered = LEGS
	cold_protection = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS|HANDS
	heat_protection = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS|HANDS
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE-200
	slowdown_general = 0.04
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK-2,
		laser = ARMOR_LASER_FLAK-2,
		energy = ARMOR_ENERGY_TEN-6,
		bio = ARMOR_BIO_THIRTY-6,
		rad = ARMOR_RAD_THIRTY-10,
		bomb = ARMOR_BOMB_TEN-8
		)

/obj/item/clothing/suit/armor/grim/light
	accessories = list(/obj/item/clothing/accessory/armor_plate)
	item_flags = ITEM_FLAG_THICKMATERIAL | ITEM_FLAG_INVALID_FOR_CHAMELEON

/obj/item/clothing/suit/armor/grim/medium
	accessories = list(/obj/item/clothing/accessory/armor_plate/flak, /obj/item/clothing/accessory/storage/pouches)
	item_flags = ITEM_FLAG_THICKMATERIAL | ITEM_FLAG_INVALID_FOR_CHAMELEON

// MILITARUM

/obj/item/clothing/suit/armor/grim/cadian
	name = "cadian pattern flak armour"
	desc = "The standard armour found throughout the Cadian-oriented PDF and Cadian Regiments, reinforced with heavy flak inserts for better protection in the field."
	icon_state = "farmor"
	item_state = "farmor"
	body_parts_covered = LEGS|ARMS
	max_pressure_protection = SPACE_SUIT_MAX_PRESSURE
	accessories = list(/obj/item/clothing/accessory/armor_plate/flakheavy)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE
	slowdown_general = 0.04
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_TEN,
		bio = ARMOR_BIO_THIRTY,
		rad = ARMOR_RAD_THIRTY+15,
		bomb = ARMOR_BOMB_TEN
	)

/obj/item/clothing/suit/armor/grim/cadian/conscript
	name = "cadian light flak armour"
	desc = "The standard armour found throughout the Cadian-oriented PDF and Cadian Regiments, It is so common that it became symbol of the Astra Militarum as a whole. This one is in it light configuration, issued to the Whiteshields."
	icon_state = "fvest"
	item_state = "fvest"
	body_parts_covered = LEGS|ARMS
	accessories = list(/obj/item/clothing/accessory/armor_plate/flak)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE-100
	slowdown_general = 0.02
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK-2,
		laser = ARMOR_LASER_FLAK-2,
		energy = ARMOR_ENERGY_TEN-1,
		bio = ARMOR_BIO_THIRTY,
		rad = ARMOR_RAD_THIRTY+10,
		bomb = ARMOR_BOMB_TEN
	)

/obj/item/clothing/suit/armor/grim/cadian/conscript/pdf
	name = "PDF flak armour"
	desc = "A non standard pattern of flak armour issued to planetary defense forces, this particular variant being inferior to guard issue kit."
	icon_state = "PDF-T"
	item_state = "PDF-T"

/obj/item/clothing/suit/armor/grim/cadian/conscript/medic
	name = "PDF medicae armour"
	icon_state = "PDF-MedicT"
	item_state = "PDF-MedicT"

/obj/item/clothing/suit/armor/grim/cadian/conscript/heavy
	name = "PDF heavy armour"
	icon_state = "PDF-SpecialT"
	item_state = "PDF-SpecialT"
	accessories = list(/obj/item/clothing/accessory/armor_plate/flakheavy)
	slowdown_general = 0.5
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_TEN,
		bio = ARMOR_BIO_THIRTY,
		rad = ARMOR_RAD_THIRTY+15,
		bomb = ARMOR_BOMB_TEN
	)

/obj/item/clothing/suit/armor/grim/cadian/conscript/captain
	name = "PDF captain's armour"
	desc = "The carapace armor issued to a Planetary Defense Force captain, providing reliable protection while maintaining a balance of mobility and durability."
	icon_state = "PDF-CaptainT"
	item_state = "PDF-CaptainT"
	body_parts_covered = LEGS|ARMS
	w_class = ITEM_SIZE_GARGANTUAN
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapaceheavy)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE-100
	slowdown_general = 0.05
	armor = list(
		melee = ARMOR_MELEE_CARAPACE-1,
		bullet = ARMOR_BALLISTIC_CARAPACE,
		laser = ARMOR_LASER_CARAPACE,
		energy = ARMOR_ENERGY_TEN+10,
		bio = ARMOR_BIO_THIRTY+10,
		rad = ARMOR_RAD_THIRTY+30,
		bomb = ARMOR_BOMB_TEN+15
	)

/obj/item/clothing/suit/armor/grim/cadian/medicae
	name = "cadian medicae flak armour"
	desc = "The standard armour found throughout the Cadian-oriented PDF and Cadian Regiments, It is so common that it became symbol of the Astra Militarum as a whole. This one is in it light configuration, bearing the Red Cross of a Combat Medicae. This one is made to be lighter to accomodate movement."
	icon_state = "medicae"
	item_state = "medicae"
	max_pressure_protection = SPACE_SUIT_MAX_PRESSURE
	accessories = list(/obj/item/clothing/accessory/armor_plate/flak)

/obj/item/clothing/suit/armor/grim/cadian/heavy
	name = "cadian heavy flak armour"
	desc = "The standard armour found throughout the Cadian-oriented PDF and Cadian Regiments, It is so common that it became symbol of the Astra Militarum as a whole. This one is in it heavy configuration"
	icon_state = "fharmor"
	item_state = "fharmor"
	w_class = ITEM_SIZE_GARGANTUAN
	max_pressure_protection = VOIDSUIT_MAX_PRESSURE
	body_parts_covered = LEGS|ARMS // Same as regular Cadian but provides better leg/arm protection.
	accessories = list(/obj/item/clothing/accessory/armor_plate/flakheavy)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+50
	slowdown_general = 0.055
	armor = list(
		melee = ARMOR_MELEE_FLAK+1,
		bullet = ARMOR_BALLISTIC_FLAK+1,
		laser = ARMOR_LASER_FLAK+1,
		energy = ARMOR_ENERGY_TEN+1,
		bio = ARMOR_BIO_THIRTY+5,
		rad = ARMOR_RAD_THIRTY+25,
		bomb = ARMOR_BOMB_TEN+4
	)

/obj/item/clothing/suit/armor/grim/cadian/officer
	name = "cadian carapace armour"
	desc = "The reinforced carapace armor worn by Cadian Officers, offering enhanced protection with carapace inserts."
	icon_state = "fharmor"
	item_state = "fharmor"
	body_parts_covered = LEGS|ARMS
	max_pressure_protection = VOIDSUIT_MAX_PRESSURE
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapace)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+100
	slowdown_general = 0.06
	armor = list(
		melee = ARMOR_MELEE_CARAPACE-1,
		bullet = ARMOR_BALLISTIC_CARAPACE,
		laser = ARMOR_LASER_CARAPACE,
		energy = ARMOR_ENERGY_TEN+15,
		bio = ARMOR_BIO_THIRTY+5,
		rad = ARMOR_RAD_THIRTY+25,
		bomb = ARMOR_BOMB_TEN+15
	)

/obj/item/clothing/suit/armor/grim/cadian/carapace
	name = "cadian carapace armour"
	desc = "The standard armour found throughout the Cadian-oriented PDF and Cadian Regiments, reinforced with carapace plates for enhanced protection in combat zones."
	icon_state = "fharmor"
	item_state = "fharmor"
	body_parts_covered = LEGS|ARMS
	max_pressure_protection = VOIDSUIT_MAX_PRESSURE
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapaceheavy)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+100
	slowdown_general = 0.06
	armor = list(
		melee = ARMOR_MELEE_CARAPACE-1,
		bullet = ARMOR_BALLISTIC_CARAPACE,
		laser = ARMOR_LASER_CARAPACE,
		energy = ARMOR_ENERGY_TEN+10,
		bio = ARMOR_BIO_THIRTY+5,
		rad = ARMOR_RAD_THIRTY+25,
		bomb = ARMOR_BOMB_TEN+15
	)

/obj/item/clothing/suit/armor/grim/krieger
	name = "krieg flak overcoat"
	desc = "A reinforced Krieg flak overcoat, resistant to environmental hazards like radiation and biohazards, with decent ballistic and thermal protection."
	icon_state = "kriegcoat"
	item_state = "kriegcoat"
	body_parts_covered = LEGS|ARMS
	max_pressure_protection = SPACE_SUIT_MAX_PRESSURE
	accessories = list(/obj/item/clothing/accessory/armor_plate/flak)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+80
	slowdown_general = 0.055
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK+1,
		laser = ARMOR_LASER_FLAK+1,
		energy = ARMOR_ENERGY_TEN+2,
		rad = ARMOR_RAD_THIRTY+40,
		bio = ARMOR_BIO_THIRTY+20,
		bomb = ARMOR_BOMB_TEN+10
	)

/obj/item/clothing/suit/armor/grim/krieger/officer
	name = "krieg officer's overcoat"
	desc = "The reinforced carapace overcoat of a Krieg Officer, offering additional protection against hazardous environments and combat damage."
	icon_state = "kriegcoat"
	item_state = "kriegcoat"
	body_parts_covered = LEGS|ARMS
	max_pressure_protection = SPACE_SUIT_MAX_PRESSURE
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapace)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+120
	slowdown_general = 0.065 // Light carapace.
	armor = list(
		melee = ARMOR_MELEE_CARAPACE,
		bullet = ARMOR_BALLISTIC_CARAPACE,
		laser = ARMOR_LASER_CARAPACE,
		energy = ARMOR_ENERGY_TEN+15,
		rad = ARMOR_RAD_THIRTY+45,
		bio = ARMOR_BIO_THIRTY+25,
		bomb = ARMOR_BOMB_TEN+15
	)


/obj/item/clothing/suit/armor/grim/krieger/grenadier
	name = "krieg grenadier overcoat"
	desc = "A Krieg grenadier carapace-plated overcoat, offering excellent protection at the cost of movement."
	icon_state = "grencoat"
	item_state = "grencoat"
	body_parts_covered = LEGS|ARMS
	max_pressure_protection = VOIDSUIT_MAX_PRESSURE
	w_class = ITEM_SIZE_GARGANTUAN
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapaceheavy)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+120
	slowdown_general = 0.075 // Similar to cadian carapace but heavier. Krieg gear is for slow -- defensive/siege warfare.
	armor = list(
		melee = ARMOR_MELEE_CARAPACE,
		bullet = ARMOR_BALLISTIC_CARAPACE+1,
		laser = ARMOR_LASER_CARAPACE+1,
		energy = ARMOR_ENERGY_TEN+20,
		rad = ARMOR_RAD_THIRTY+55,
		bio = ARMOR_BIO_THIRTY+35,
		bomb = ARMOR_BOMB_TEN+20
	)

/obj/item/clothing/suit/armor/grim/mordian
	name = "mordian patrol jacket"
	desc = "The fatigues worn by a Mordian Iron Guardsman. Light and robust in the colour blue, designed to protect against blast and small arms fire."
	icon_state = "MordianC"
	item_state = "MordianC"
	body_parts_covered = LEGS|ARMS
	accessories = list(/obj/item/clothing/accessory/armor_plate/flaklamellar) // Flak Padding. lighter and weaker.
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE
	slowdown_general = 0.025
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK-1,
		energy = ARMOR_ENERGY_TEN-1,
		bio = ARMOR_BIO_THIRTY,
		rad = ARMOR_RAD_THIRTY+10,
		bomb = ARMOR_BOMB_TEN
		)

/obj/item/clothing/suit/armor/grim/mordian/sergeant
	name = "mordian carapace jacket"
	desc = "The fatigues worn by a Mordian Iron Guardsman. Light and robust in the colour blue, designed to protect against blast and small arms fire. This one is reinforced with carapace plating."
	icon_state = "MordianC"
	item_state = "MordianCsergeant"
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapace)
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+50
	slowdown_general = 0.035
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_TEN+5,
		bio = ARMOR_BIO_THIRTY+5,
		rad = ARMOR_RAD_THIRTY+20,
		bomb = ARMOR_BOMB_TEN+5
		)

/obj/item/clothing/suit/armor/grim/valhallan
	name = "valhallan flak overcoat"
	desc = "A thermal flak overcoat designed for Valhallan Ice Warriors, providing standard protection against energy projectiles and blunt force."
	icon_state = "valarmor"
	item_state = "valarmor"
	body_parts_covered = LEGS|ARMS
	max_pressure_protection = SPACE_SUIT_MAX_PRESSURE
	accessories = list(/obj/item/clothing/accessory/armor_plate/flaklamellar)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE-200 // No good at heat.
	slowdown_general = 0.04
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK+1,
		energy = ARMOR_ENERGY_TEN,
		rad = ARMOR_RAD_THIRTY+15,
		bio = ARMOR_BIO_THIRTY,
		bomb = ARMOR_BOMB_TEN-5
	)


/obj/item/clothing/suit/armor/grim/valhallan/medicae
	name = "valhallan medicae vercoat"
	desc = "A lightweight, thermally insulated Valhallan overcoat worn by Combat Medicae, offering basic protection with increased mobility."
	icon_state = "mvalarmor"
	item_state = "mvalarmor"

/obj/item/clothing/suit/armor/grim/valhallan/officer
	name = "valhalan carapace overcoat"
	desc = "A Valhallan overcoat with additional markings and improved protection, worn by Officers."
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapace)
	body_parts_covered = LEGS | ARMS
	slowdown_general = 0.06
	armor = list(
		melee = ARMOR_MELEE_CARAPACE,
		bullet = ARMOR_BALLISTIC_CARAPACE-1,
		laser = ARMOR_LASER_CARAPACE+1,
		energy = ARMOR_ENERGY_TEN+10,
		bio = ARMOR_BIO_THIRTY+25,
		rad = ARMOR_RAD_THIRTY+5,
		bomb = ARMOR_BOMB_TEN+5
	)

/obj/item/clothing/suit/armor/grim/maccabian
	name = "maccabian carapace armor"
	desc = "The standard carapace armor worn by Maccabian Jannisaries, designed for resilience in the field."
	icon_state = "M_Armor-Icon"
	item_state = "M_Armor-Icon"
	w_class = ITEM_SIZE_GARGANTUAN
	body_parts_covered = LEGS|ARMS
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapace)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+120 // Maccabian carapace is like a space suit.
	slowdown_general = 0.065
	armor = list(
		melee = ARMOR_MELEE_CARAPACE,
		bullet = ARMOR_BALLISTIC_CARAPACE,
		laser = ARMOR_LASER_CARAPACE,
		energy = ARMOR_ENERGY_TEN+10,
		rad = ARMOR_RAD_THIRTY+35,
		bio = ARMOR_BIO_THIRTY+15,
		bomb = ARMOR_BOMB_TEN+5
	)

/obj/item/clothing/suit/armor/grim/maccabian/sergeant
	name = "maccabian carapace armor"
	desc = "The flak armor worn by Maccabian Sergeants, reinforced with carapace plates for enhanced protection."
	icon_state = "M_SArmor-Icon"
	item_state = "M_SArmor-Icon"
	body_parts_covered = LEGS|ARMS
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapacemaster)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+120
	slowdown_general = 0.075
	armor = list(
		melee = ARMOR_MELEE_CARAPACE+1,
		bullet = ARMOR_BALLISTIC_CARAPACE+1,
		laser = ARMOR_LASER_CARAPACE+1,
		energy = ARMOR_ENERGY_TEN+15,
		rad = ARMOR_RAD_THIRTY+45,
		bio = ARMOR_BIO_THIRTY+25,
		bomb = ARMOR_BOMB_TEN+15
	)

/obj/item/clothing/suit/armor/grim/catachan
	name = "catachan flak vest"
	desc = "A light flak vest worn by Catachan Guardsmen, designed for mobility over protection."
	icon_state = "Catachan_Vest"
	item_state = "Catachan_Vest"
	body_parts_covered = LEGS
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapace)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE
	slowdown_general = 0
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK-1,
		energy = ARMOR_ENERGY_TEN-2,
		rad = ARMOR_RAD_THIRTY,
		bio = ARMOR_BIO_THIRTY,
		bomb = ARMOR_BOMB_TEN
	)

/obj/item/clothing/suit/armor/grim/catachan/sergeant
	name = "catachan flak vest"
	desc = "A decorated Catachan flak vest worn by sergeants, offering slightly better protection without compromising mobility."
	body_parts_covered = LEGS
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapacemaster)

/obj/item/clothing/suit/armor/grim/commissar
	name = "commissar's greatcoat"
	desc = "The infamous greatcoat worn by an Imperial Commissar, reinforced with carapace-lamellar lining for additional protection."
	icon_state = "commissar4"
	item_state = "commissar4"
	body_parts_covered = LEGS|ARMS
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapacemaster) // There's only a handful of commissar's to a regiment. They get the good stuff.
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+60
	slowdown_general = 0.075 // Commissar's aren't fast.
	armor = list(
		melee = ARMOR_MELEE_CARAPACE+1,
		bullet = ARMOR_BALLISTIC_CARAPACE+1,
		laser = ARMOR_LASER_CARAPACE+1,
		energy = ARMOR_ENERGY_TEN+20,
		bio = ARMOR_BIO_THIRTY+25,
		rad = ARMOR_RAD_THIRTY+35,
		bomb = ARMOR_BOMB_TEN+15
	)

/obj/item/clothing/suit/armor/grim/commissar/krieg
	name = "commissar's breastplate"
	desc = "The Commissar's iconic coat, this out tailored to match more of the uniform theme of the Officers of Krieg. Though the Krieg Guardsmen don't fear you, the others certainly will."
	icon_state = "Kriegissarplate"
	item_state = "Kriegissarplate"
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+120
	slowdown_general = 0.065
	armor = list(
		melee = ARMOR_MELEE_CARAPACE,
		bullet = ARMOR_BALLISTIC_CARAPACE,
		laser = ARMOR_LASER_CARAPACE,
		energy = ARMOR_ENERGY_TEN+15,
		rad = ARMOR_RAD_THIRTY+25,
		bio = ARMOR_BIO_THIRTY+15,
		bomb = ARMOR_BOMB_TEN+15
	)

/obj/item/clothing/suit/armor/grim/commissar/catachan
	name = "commissar's trenchjacket"
	desc = "What used to be a decorated and custom tailored coat of the Officio Prefectus is now crudely stripped of decoration and cut down to be lighter and more breathable for the jungles of Catachan, although, also padded to be more resistant to melee attacks. Though, wearing something like this out here is more of a power move."
	icon_state = "catacommissar"
	item_state = "catacommissar"

/obj/item/clothing/suit/armor/grim/commissar/mordian
	name = "commissar's dress formals"
	desc = "A Mordian Commissar's formal uniform, tailored to specifically meet regulation standards. The wearer shall make guardsman follow orders to the letter."
	icon_state = "MordianC"
	item_state = "MordianCsergeant"

/obj/item/clothing/suit/armor/stormtrooper
	name = "stormtrooper's carapace armour"
	desc = "The carapace armor worn by Inquisitorial Stormtroopers, designed for heavy frontline combat. Shows signs of extensive use."
	icon_state = "i-Stormtrooper Armor"
	item_state = "i-Stormtrooper Armor"
	w_class = ITEM_SIZE_GARGANTUAN
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	body_parts_covered = LEGS|ARMS|FULL_TORSO
	slowdown_general = 0.09
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+120
	armor = list(
		melee = ARMOR_MELEE_CARAPACE-1, // No wasted weight on melee protection for Stormtroopers.
		bullet = ARMOR_BALLISTIC_CARAPACE+1,
		laser = ARMOR_LASER_CARAPACE+1,
		energy = ARMOR_ENERGY_TEN+15,
		rad = ARMOR_RAD_THIRTY+45,
		bio = ARMOR_BIO_THIRTY+25,
		bomb = ARMOR_BOMB_THIRTY+5
		)

/obj/item/clothing/suit/armor/stormtrooper/scion
	name = "tempestus scion's carapace armour"
	desc = "Solid Carapace armour, belonging to the elite forces of the Tempestus Scions."
	icon_state = "ScionArmour"
	item_state = "ScionArmour"

/obj/item/clothing/suit/armor/grim/cadian/officer_formal
	name = "militarum officer's coat"
	desc = "A formal coat worn by command staff of the Imperial Guard, reinforced with integrated carapace and armourplas plates. It has an insignia spear belonging to that of the general staff for the local Lord General Militant."
	icon_state = "officertanjacket"
	item_state = "officertanjacket"
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapace)
	body_parts_covered = LEGS | ARMS
	armor = list(
		melee = ARMOR_MELEE_CARAPACE-1,
		bullet = ARMOR_BALLISTIC_CARAPACE-1,
		laser = ARMOR_LASER_CARAPACE-1,
		energy = ARMOR_ENERGY_TEN+10,
		bomb = ARMOR_BOMB_TEN+15,
		rad = ARMOR_RAD_THIRTY+10,
		bio = ARMOR_BIO_THIRTY+10
	)
	slowdown_general = 0.045

/obj/item/clothing/suit/armor/kasrkin
	name = "kasrkin carapace"
	desc = "The Carapace Armor of an Elite Kasrkin, a reliable stormtrooper armor."
	icon_state = "kasrkinarmor"
	item_state = "kasrkinarmor"
	w_class = ITEM_SIZE_GARGANTUAN
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	body_parts_covered = LEGS|ARMS|FULL_TORSO
	slowdown_general = 0.09
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+120
	armor = list(
		melee = ARMOR_MELEE_CARAPACE-1, // No wasted weight on melee protection for Stormtroopers.
		bullet = ARMOR_BALLISTIC_CARAPACE+1,
		laser = ARMOR_LASER_CARAPACE+1,
		energy = ARMOR_ENERGY_TEN+15,
		rad = ARMOR_RAD_THIRTY+45,
		bio = ARMOR_BIO_THIRTY+25,
		bomb = ARMOR_BOMB_THIRTY+5
		)

//// MAGISTRATUM
//// MAGISTRATUM
//// MAGISTRATUM
/obj/item/clothing/suit/armor/grim/bountyhunter
	name = "bounty hunter's armour"
	desc = "Worn by those who make a living tracking down Imperial fugitives or collecting bounties, this armor is built for mobility and resilience."
	icon_state = "valhalla"
	item_state = "valhalla"
	body_parts_covered = LEGS|ARMS
	accessories = list(/obj/item/clothing/accessory/armor_plate/flak)
	slowdown_general = 0.025
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+200
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK-2,
		energy = ARMOR_ENERGY_TEN-2,
		rad = ARMOR_RAD_THIRTY+15, // patrols sewers and underhives
		bio = ARMOR_BIO_THIRTY+5,
		bomb = ARMOR_BOMB_TEN-2
		)

/obj/item/clothing/suit/armor/enforcer_sgt
	name = "enforcer's patrol armour"
	desc = "The carapace armor worn by Enforcers, reinforced to provide superior protection against explosions and small arms fire. Lighter than standard carapace suits but still robust."
	icon_state = "MarshalArmor"
	item_state = "MarshalArmor"
	w_class = ITEM_SIZE_GARGANTUAN
	body_parts_covered = LEGS|ARMS|FULL_TORSO
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	slowdown_general = 0.10 // Better slowdown then standard modular armors.
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+400
	armor = list(
		melee = ARMOR_MELEE_CARAPACE,
		bullet = ARMOR_BALLISTIC_CARAPACE+1,
		laser = ARMOR_LASER_CARAPACE+1,
		energy = ARMOR_ENERGY_TEN+20,
		rad = ARMOR_RAD_THIRTY+45,
		bio = ARMOR_BIO_THIRTY+35,
		bomb = ARMOR_BOMB_THIRTY
		)

/obj/item/clothing/suit/armor/enforcer2
	name = "enforcer's patrol armour"
	desc = "The flak armor worn by a Void Enforcer. Heavy and robust, its distinctive blue design provides superior protection against explosions and small arms fire in urban combat."
	icon_state = "PalaniteArmor"
	item_state = "PalaniteArmor"
	w_class = ITEM_SIZE_GARGANTUAN
	body_parts_covered = LEGS|ARMS|FULL_TORSO
	max_pressure_protection = VOIDSUIT_MAX_PRESSURE
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+300
	slowdown_general = 0.08
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK+1,
		laser = ARMOR_LASER_FLAK+1,
		energy = ARMOR_ENERGY_TEN+10,
		bio = ARMOR_BIO_THIRTY+28,
		rad = ARMOR_RAD_THIRTY+35,
		bomb = ARMOR_BOMB_TEN+8
		)

/obj/item/clothing/suit/armor/grim/enforcer
	name = "enforcer patrol jacket"
	desc = "The lightweight flak jacket worn by a Enforcer. It’s a low-profile, black coat designed to provide moderate protection against blasts and small arms fire while maintaining mobility."
	icon_state = "enforcercoat"
	item_state = "enforcercoat"
	body_parts_covered = LEGS|ARMS // Low profile armor but still highly protective.
	accessories = list(/obj/item/clothing/accessory/armor_plate/flak)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+300
	slowdown_general = 0.035
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK-1,
		energy = ARMOR_ENERGY_TEN-1,
		rad = ARMOR_RAD_THIRTY+10,
		bio = ARMOR_BIO_THIRTY+5,
		bomb = ARMOR_BOMB_TEN
	)

/obj/item/clothing/suit/armor/grim/enforcer/sergeant
	name = "enforcer's patrol jacket"
	desc = "A flak jacket worn by Enforcer's. Black and streamlined, it provides mobility while offering enhanced protection against blasts and small arms fire."
	icon_state = "enforcercoat"
	item_state = "enforcercoat"
	body_parts_covered = LEGS|ARMS
	slowdown_general = 0.055
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapaceheavy) // Heavy cheaper plates. Marshals can't have two sets of masterwork.
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+400
	armor = list(
		melee = ARMOR_MELEE_CARAPACE-1,
		bullet = ARMOR_BALLISTIC_CARAPACE-1,
		laser = ARMOR_LASER_CARAPACE-1,
		energy = ARMOR_ENERGY_TEN,
		rad = ARMOR_RAD_THIRTY+15,
		bio = ARMOR_BIO_THIRTY+10,
		bomb = ARMOR_BOMB_TEN+5,
	)

/obj/item/clothing/suit/armor/arbitrator
	name = "arbitrator's carapace armour"
	desc = "Worn by Magistratum Arbitrators, this carapace armor offers exceptional protection against explosives and small arms fire, balancing mobility with heavy-duty defense."
	icon_state = "Judge"
	item_state = "Judge"
	w_class = ITEM_SIZE_GARGANTUAN
	body_parts_covered = LEGS|ARMS|FULL_TORSO
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	slowdown_general = 0.09 // Hard armor sets get more slowdown for having equalized protection. They are fully superior to traditional armors with no weaknesses.
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+500
	armor = list(
		melee = ARMOR_MELEE_CARAPACE+1,
		bullet = ARMOR_BALLISTIC_CARAPACE+2,
		laser = ARMOR_LASER_CARAPACE+2,
		energy = ARMOR_ENERGY_TEN+16,
		rad = ARMOR_RAD_THIRTY+35,
		bio = ARMOR_BIO_THIRTY+25,
		bomb = ARMOR_BOMB_THIRTY+5
		)

// MECHANICUS
/obj/item/clothing/suit/armor/grim/storage/hooded/mechanicus/bondsman
	name = "mechanicus hazard suit"
	desc = "A heavy protective suit made from chemically treated fabrics that protect the wearer from toxic death world environment, this particular set is fitted with carapace pauldrons and plate to protect it's wearer from dangers only the Cogboys seem wise enough to prepare for."
	icon_state = "MineWorkerS"
	item_state = "MineWorkerS"
	w_class = ITEM_SIZE_GARGANTUAN
	body_parts_covered = LEGS|ARMS
	accessories = list(/obj/item/clothing/accessory/armor_plate/mechplate)
	max_pressure_protection = VOIDSUIT_MAX_PRESSURE
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+100
	slowdown_general = 0.055
	action_button_name = "Toggle Hood"
	hoodtype = /obj/item/clothing/head/hardhat/bondsman
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_TEN+10,
		bio = ARMOR_BIO_THIRTY+20,
		rad = ARMOR_RAD_THIRTY+30,
		bomb = ARMOR_BOMB_TEN+15
		)
/obj/item/clothing/head/hardhat/bondsman // hardhats have light toggle code
	name = "hazard helmet"
	desc = "A heavy filtration mask fitted with carapace and a heavy hood to protect against burns."
	icon_state = "MineWorkerH"
	item_state = "MineWorkerH"
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+200
	max_pressure_protection = VOIDSUIT_MAX_PRESSURE
	slowdown_general = 0.005
	disorientation = 0.5
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK-1,
		energy = ARMOR_ENERGY_TEN,
		bio = ARMOR_BIO_THIRTY+20,
		rad = ARMOR_RAD_THIRTY+30,
		bomb = ARMOR_BOMB_TEN+5
		)

/obj/item/clothing/suit/armor/grim/mechanicus/techpriest
	name = "tech priest robes"
	desc = "Red robes adorned with metal augmentations, scanners, and plates, marking the wearer as a veteran Tech-Priest of Mars. Resistant to biohazards and radiation, these ancient mechanisms still hum with life."
	icon_state = "Mars_Engineseer"
	item_state = "Mars_Engineseer"
	canremove = 0
	unacidable = 1
	w_class = ITEM_SIZE_GARGANTUAN
	body_parts_covered = LEGS | ARMS | HEAD
	flags_inv = HIDEEARS|BLOCKHEADHAIR
	accessories = list(/obj/item/clothing/accessory/armor_plate/mechplate)
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE +600
	cold_protection = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS|HANDS|HEAD
	heat_protection = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS|HANDS|HEAD
	flags_inv = HIDEMASK|HIDEEARS|BLOCKHAIR
	slowdown_general = 0.08
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK+1,
		laser = ARMOR_LASER_CARAPACE-1,
		energy = ARMOR_ENERGY_TEN+30,
		rad = ARMOR_RAD_FIFTY+58,
		bio = ARMOR_BIO_FIFTY+58,
		bomb = ARMOR_BOMB_TEN+20
		)

/obj/item/clothing/suit/armor/grim/mechanicus/techpriest/mob_can_equip(mob/living/carbon/human/user, slot)
	if(user.get_equipped_item(slot_head))
		to_chat(user, "You are already wearing headgear, you cannot wear the tech priest robes over it.")
		return FALSE
	if(slot == slot_head)
		to_chat(user, "Your mechanicus robes already cover your head, you cannot wear a helmet.")
		return FALSE
	return ..()

/obj/item/clothing/suit/armor/grim/mechanicus/techpriest/ryza
	name = "tech priest robes"
	desc = "Dark orange robes reinforced with metallic augments and plating, well suited for the fiery forges of Ryza. The ancient tech inside offers strong resistance to biohazards and radiation."
	icon_state = "Ryza_Engineseer"
	item_state = "Ryza_Engineseer"

/obj/item/clothing/suit/armor/grim/mechanicus/techpriest/stygies
	name = "tech priest robes"
	desc = "Black, shadowy robes enhanced with augments and scanner arrays, reflecting the covert nature of Stygies' tech priests. The augmentations provide robust protection against biohazards and radiation."
	icon_state = "Stygies8_Engineseer"
	item_state = "Stygies8_Engineseer"

/obj/item/clothing/suit/armor/grim/mechanicus/techpriest/metalica
	name = "tech priest robes"
	desc = "Pale white robes marked with metallic enhancements, representing the pure and efficient form of Metalica's Tech-Priests. The ancient augments offer high resistance to biohazards and radiation."
	icon_state = "Metalica_Engineseer"
	item_state = "Metalica_Engineseer"


/obj/item/clothing/head/hardhat/techpriest
	name = "augmented head" // Do not use this with the new tech priest armors.
	desc = "The augmented skull and hood signifying one is a priest of the Adeptus Mechanicus."
	icon_state = "techpriestnew"
	item_state = "techpriestnew"
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+600
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	slowdown_general = 0.004
	disorientation = 1 // Tech priests dont do melee.
	brightness_on = 6
	unacidable = 1
	canremove = 1
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK+1,
		laser = ARMOR_LASER_CARAPACE-1,
		energy = ARMOR_ENERGY_TEN+20,
		rad = ARMOR_RAD_FIFTY+48,
		bio = ARMOR_BIO_FIFTY+48,
		bomb = ARMOR_BOMB_TEN+10
		)
	flags_inv = BLOCKHAIR|HIDEEARS|HIDEEYES
	flash_protection = FLASH_PROTECTION_MAJOR

/obj/item/clothing/suit/armor/grim/mechanicus/biologis
	name = "biologis robes"
	desc = "Plain robes adorned with various wriggling mechanical appendages. These robes belong to a Magos Biologis, devoted to unlocking the biological mysteries of the universe with a machine-like precision."
	icon_state = "genetor"
	item_state = "genetor"
	canremove = 0
	unacidable = 1
	body_parts_covered = LEGS | ARMS
	accessories = list(/obj/item/clothing/accessory/armor_plate/mechplate)
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE +600
	slowdown_general = 0.08
	armor = list(
		melee = ARMOR_MELEE_FLAK, // Temp until we can make a mechanicus species.
		bullet = ARMOR_BALLISTIC_FLAK+1,
		laser = ARMOR_LASER_CARAPACE-1,
		energy = ARMOR_ENERGY_TEN+30,
		rad = ARMOR_RAD_FIFTY+58,
		bio = ARMOR_BIO_FIFTY+58,
		bomb = ARMOR_BOMB_TEN+20
		)
/obj/item/clothing/head/hardhat/techpriest/biologis
	name = "Biologis hood"
	desc = "An ancient cowl covering a heavily augmented face."
	icon_state = "genetor"
	item_state = "genetor"
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK+1,
		laser = ARMOR_LASER_CARAPACE-1,
		energy = ARMOR_ENERGY_TEN+20,
		rad = ARMOR_RAD_FIFTY+48,
		bio = ARMOR_BIO_FIFTY+48,
		bomb = ARMOR_BOMB_TEN+10
		)

/obj/item/clothing/suit/armor/grim/mechanicus/magos
	name = "magos robes"
	desc = "Magnificent robes brimming with advanced augments, scanners, and syringes. These ancient garments have been worn by countless Magi, their layered machinery acting as a testament to the long, unrelenting pursuit of knowledge."
	icon_state = "magos"
	item_state = "magos"
	canremove = 0
	unacidable = 1
	body_parts_covered = LEGS | ARMS
	accessories = list(/obj/item/clothing/accessory/armor_plate/mechplatemagos)
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE +600
	slowdown_general = 0.08
	armor = list(
		melee = ARMOR_MELEE_CARAPACE, // Temp until we can make a mechanicus species.
		bullet = ARMOR_BALLISTIC_CARAPACE,
		laser = ARMOR_LASER_CARAPACE+1,
		energy = ARMOR_ENERGY_TEN+40,
		rad = ARMOR_RAD_FIFTY+68,
		bio = ARMOR_BIO_FIFTY+68,
		bomb = ARMOR_BOMB_TEN+35
		)
/obj/item/clothing/head/hardhat/techpriest/magos
	icon_state = "magoshelm"
	item_state = "magoshelm"
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+800
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	slowdown_general = 0.004
	disorientation = 0.5 // magos can melee
	armor = list(
		melee = ARMOR_MELEE_CARAPACE-1,
		bullet = ARMOR_BALLISTIC_CARAPACE-1,
		laser = ARMOR_LASER_CARAPACE,
		energy = ARMOR_ENERGY_TEN+30,
		rad = ARMOR_RAD_FIFTY+58,
		bio = ARMOR_BIO_FIFTY+58,
		bomb = ARMOR_BOMB_TEN+20
		)

/obj/item/clothing/suit/armor/grim/storage/hooded/skitarii
	name = "skitarii exoskeleton"
	desc = "Tailored and reinforced by the Adeptus Mechanicus, these sturdy and protective robes are being issued to Skitarii warriors."
	icon_state = "skitsuit"
	item_state = "skitsuit"
	w_class = ITEM_SIZE_GARGANTUAN
	canremove = 0
	unacidable = 1
	body_parts_covered = LEGS | ARMS
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapace)
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE +550
	slowdown_general = 0.07 // Skitarii get superior armor stats to tech priests and slowdown since they're engineered to be combat units. Tech priests aren't designed for that.
	armor = list(
		melee = ARMOR_MELEE_CARAPACE,
		bullet = ARMOR_BALLISTIC_CARAPACE,
		laser = ARMOR_LASER_CARAPACE,
		energy = ARMOR_ENERGY_TEN+20,
		rad = ARMOR_RAD_FIFTY+48,
		bio = ARMOR_BIO_FIFTY+48,
		bomb = ARMOR_BOMB_TEN+10
		)
	action_button_name = "Toggle Hood"
	hoodtype = /obj/item/clothing/head/skithood
/obj/item/clothing/head/skithood
	name = "skitarii hood"
	desc = "A blood red hood with embroidered with the Adeptus Mechanicus' logo."
	icon_state = "skithood"
	item_state = "skithood"
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+650
	slowdown_general = 0.004
	body_parts_covered = HEAD|FACE|EYES
	flags_inv = HIDEEARS | BLOCKHAIR
	armor = list(
		melee = ARMOR_MELEE_CARAPACE,
		bullet = ARMOR_BALLISTIC_CARAPACE,
		laser = ARMOR_LASER_CARAPACE,
		energy = ARMOR_ENERGY_TEN+20,
		rad = ARMOR_RAD_FIFTY+48,
		bio = ARMOR_BIO_FIFTY+48,
		bomb = ARMOR_BOMB_TEN+10
		)
/obj/item/clothing/suit/armor/grim/storage/hooded/stalker
	name = "ruststalker exoskeleton"
	desc = "Tailored and reinforced by the Adeptus Mechanicus, this strange armour is issued to Skitarii Ruststalkers. It shimmers oddly in the light, and seems to have storage pouches for skulls."
	icon_state = "skitsuit"
	item_state = "skitsuit"
	canremove = 0
	unacidable = 1
	body_parts_covered = LEGS | ARMS
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapace)
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE +600
	slowdown_general = 0.055
	armor = list(
		melee = ARMOR_MELEE_CARAPACE-1,
		bullet = ARMOR_BALLISTIC_CARAPACE-1,
		laser = ARMOR_LASER_CARAPACE-1,
		energy = ARMOR_ENERGY_TEN+10,
		rad = ARMOR_RAD_FIFTY+48,
		bio = ARMOR_BIO_FIFTY+48,
		bomb = ARMOR_BOMB_TEN+5
		)
	action_button_name = "Toggle Hood"
	hoodtype = /obj/item/clothing/head/rusthood
/obj/item/clothing/head/rusthood
	name = "ruststalker hood"
	desc = "A shiny hood embroidered with the Adeptus Mechanicus' logo."
	icon_state = "skithood"
	item_state = "skithood"
	body_parts_covered = HEAD|FACE|EYES
	flags_inv = HIDEEARS | BLOCKHAIR
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+700
	slowdown_general = 0.004
	armor = list(
		melee = ARMOR_MELEE_CARAPACE-1,
		bullet = ARMOR_BALLISTIC_CARAPACE-1,
		laser = ARMOR_LASER_CARAPACE-1,
		energy = ARMOR_ENERGY_TEN+10,
		rad = ARMOR_RAD_FIFTY+48,
		bio = ARMOR_BIO_FIFTY+48,
		bomb = ARMOR_BOMB_TEN+5
		)

/obj/item/clothing/suit/armor/grim/storage/hooded/vanguard
	name = "vanguard exoskeleton"
	desc = "Tailored and reinforced by the Adeptus Mechanicus, these heavy ceramite plates offer near-complete protection from attack."
	icon_state = "rig-hazardhardsuit"
	item_state = "rig-hazardhardsuit"
	canremove = 0
	unacidable = 1
	body_parts_covered = LEGS | ARMS
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapaceheavy)
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE +700
	slowdown_general = 0.08
	armor = list(
		melee = ARMOR_MELEE_CARAPACE-1,
		bullet = ARMOR_BALLISTIC_CARAPACE+1,
		laser = ARMOR_LASER_CARAPACE+1,
		energy = ARMOR_ENERGY_TEN+20,
		rad = ARMOR_RAD_FIFTY+48,
		bio = ARMOR_BIO_FIFTY+48,
		bomb = ARMOR_BOMB_TEN+10
		)
	action_button_name = "Toggle Hood"
	hoodtype = /obj/item/clothing/head/vanhelm
/obj/item/clothing/head/vanhelm
	name = "vanguard helmet"
	desc = "A shiny helmet covered in Mechanicus etchings."
	icon_state = "rghelmet2"
	item_state = "rghelmet2"
	body_parts_covered = HEAD|FACE|EYES
	flags_inv = HIDEEARS | BLOCKHAIR
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+800
	slowdown_general = 0.006
	disorientation = 0.5
	armor = list(
		melee = ARMOR_MELEE_CARAPACE,
		bullet = ARMOR_BALLISTIC_CARAPACE+1,
		laser = ARMOR_LASER_CARAPACE+1,
		energy = ARMOR_ENERGY_TEN+20,
		rad = ARMOR_RAD_FIFTY+48,
		bio = ARMOR_BIO_FIFTY+48,
		bomb = ARMOR_BOMB_TEN+10
		)


/obj/item/clothing/suit/armor/servitor
	name = "servitor's exoskeleton"
	desc = "The heavily armoured exoskeleton of a servitor, the extensive augmentation ensuring that nothing short of a krak rocket is capable of ending it's misery."
	icon_state = "servitor_robe"
	item_state = "servitor_robe" // to-do. make some servitor guns and a heavier combat version of this plating.
	canremove = 0
	w_class = ITEM_SIZE_GARGANTUAN
	unacidable = 1
	body_parts_covered = FULL_BODY
	max_pressure_protection = RIG_MAX_PRESSURE
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE +1600 // Really highlights why servitors are used by the mechanicus.
	slowdown_general = 0.21
	armor = list(
		melee = ARMOR_MELEE_CARAPACE,
		bullet = ARMOR_BALLISTIC_POWER_ARMOUR, // In the books killing a servitor is like trying to blow up a chimera.
		laser = ARMOR_LASER_POWER_ARMOUR,
		energy = ARMOR_ENERGY_TEN+20,
		rad = ARMOR_RAD_FIFTY+48,
		bio = ARMOR_BIO_FIFTY+48,
		bomb = ARMOR_BOMB_TEN+10
		)

/obj/item/clothing/suit/armor/servitor/janitor
	icon_state = "servitor_robe2"
	item_state = "servitor_robe2"

// SS13 PLATE SYSTEMS
// SS13 PLATE SYSTEMS

/obj/item/clothing/suit/armor/grim/blue
	name = "blue plate carrier"
	desc = "A lightweight blue plate carrier vest. It can be equipped with armor plates, but provides no protection of its own."
	icon_state = "pcarrier_blue"

/obj/item/clothing/suit/armor/grim/green
	name = "green plate carrier"
	desc = "A lightweight green plate carrier vest. It can be equipped with armor plates, but provides no protection of its own."
	icon_state = "pcarrier_green"

/obj/item/clothing/suit/armor/grim/navy
	name = "navy plate carrier"
	desc = "A lightweight navy blue plate carrier vest. It can be equipped with armor plates, but provides no protection of its own."
	icon_state = "pcarrier_navy"

/obj/item/clothing/suit/armor/grim/tan
	name = "tan plate carrier"
	desc = "A lightweight tan plate carrier vest. It can be equipped with armor plates, but provides no protection of its own."
	icon_state = "pcarrier_tan"

/obj/item/clothing/suit/armor/grim/tan/tactical
	name = "tactical plate carrier"
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapace, /obj/item/clothing/accessory/storage/pouches/large/tan)

/obj/item/clothing/suit/armor/grim/merc
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapaceheavy, /obj/item/clothing/accessory/arm_guards/merc, /obj/item/clothing/accessory/leg_guards/merc, /obj/item/clothing/accessory/storage/pouches/large)
	item_flags = ITEM_FLAG_THICKMATERIAL | ITEM_FLAG_INVALID_FOR_CHAMELEON

/obj/item/clothing/suit/armor/riot
	name = "heavy ganger armour"
	desc = "An armored flak suit with heavy padding to protect against melee attacks."
	icon_state = "riotcarrier"
	valid_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA, ACCESSORY_SLOT_ARMOR_ARMS, ACCESSORY_SLOT_ARMOR_LEGS)
	restricted_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA, ACCESSORY_SLOT_ARMOR_ARMS, ACCESSORY_SLOT_ARMOR_LEGS)
	w_class = ITEM_SIZE_GARGANTUAN
	armor = list(
		melee = ARMOR_MELEE_FLAK+1,
		bullet = ARMOR_BALLISTIC_FLAK-3,
		laser = ARMOR_LASER_FLAK-3,
		energy = ARMOR_ENERGY_TEN-3,
		bio = ARMOR_BIO_THIRTY,
		rad = ARMOR_RAD_THIRTY-5,
		bomb = ARMOR_BOMB_TEN-6
		)
	flags_inv = CLOTHING_BULKY
	slowdown_general = 0.06
	siemens_coefficient = 0.5
	accessories = list(/obj/item/clothing/accessory/arm_guards/flak,/obj/item/clothing/accessory/leg_guards/flak)

/obj/item/clothing/suit/armor/bulletproof
	name = "reactive armor suit"
	desc = "A strange slug resistant reactive suit with heavy plates to protect against ballistic projectiles."
	icon_state = "ballisticcarrier"
	valid_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA, ACCESSORY_SLOT_ARMOR_ARMS, ACCESSORY_SLOT_ARMOR_LEGS)
	restricted_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA, ACCESSORY_SLOT_ARMOR_ARMS, ACCESSORY_SLOT_ARMOR_LEGS)
	w_class = ITEM_SIZE_GARGANTUAN
	body_parts_covered = UPPER_TORSO|LOWER_TORSO
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK+2,
		laser = ARMOR_LASER_FLAK-1,
		energy = ARMOR_ENERGY_TEN,
		bio = ARMOR_BIO_THIRTY-8,
		rad = ARMOR_RAD_THIRTY,
		bomb = ARMOR_BOMB_THIRTY
		)
	flags_inv = CLOTHING_BULKY
	slowdown_general = 0.09
	siemens_coefficient = 0.7

/obj/item/clothing/suit/armor/bulletproof/vest //because apparently some map uses this somewhere and I'm too lazy to go looking for and replacing it.
	accessories = null
	item_flags = ITEM_FLAG_THICKMATERIAL | ITEM_FLAG_INVALID_FOR_CHAMELEON

/obj/item/clothing/suit/armor/laserproof
	name = "reactive armor suit"
	desc = "A strange energy resistant reactive suit with advanced shielding to protect against energy weapons."
	icon_state = "ablativecarrier"
	valid_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA, ACCESSORY_SLOT_ARMOR_ARMS, ACCESSORY_SLOT_ARMOR_LEGS)
	restricted_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA, ACCESSORY_SLOT_ARMOR_ARMS, ACCESSORY_SLOT_ARMOR_LEGS)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK+1,
		laser = ARMOR_LASER_FLAK+2,
		bio = ARMOR_BIO_THIRTY-8,
		rad = ARMOR_RAD_THIRTY,
		energy = ARMOR_ENERGY_RESISTANT
		)
	flags_inv = CLOTHING_BULKY
	slowdown_general = 0.09
	siemens_coefficient = 0

/obj/item/clothing/suit/armor/laserproof/handle_shield(mob/user, damage, atom/damage_source = null, mob/attacker = null, def_zone = null, attack_text = "the attack")
	if(istype(damage_source, /obj/item/projectile/energy) || istype(damage_source, /obj/item/projectile/beam))
		var/obj/item/projectile/P = damage_source

		var/reflectchance = 28 - round(damage/3)
		if(!(def_zone in list(BP_CHEST, BP_GROIN))) //not changing this so arm and leg shots reflect, gives some incentive to not aim center-mass
			reflectchance /= 2
		if(P.starting && prob(reflectchance))
			visible_message(SPAN_DANGER("\The [user]'s [src.name] reflects [attack_text]!"))

			// Find a turf near or on the original location to bounce to
			var/new_x = P.starting.x + pick(0, 0, 0, 0, 0, -1, 1, -2, 2)
			var/new_y = P.starting.y + pick(0, 0, 0, 0, 0, -1, 1, -2, 2)
			var/turf/curloc = get_turf(user)

			// redirect the projectile
			P.redirect(new_x, new_y, curloc, user)

			return PROJECTILE_CONTINUE // complete projectile permutation
