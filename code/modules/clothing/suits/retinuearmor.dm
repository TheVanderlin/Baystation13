// ORDOS INQUISITION
// ORDOS INQUISITION
/obj/item/clothing/suit/armor/grim/agent
	name = "carapace coat"
	desc = "A brilliantly made carapace coat for Inquisitorial Agents, adorned with holy seals and the Rosette to ward off Chaos corruption."
	icon_state = "acolytecoat"
	item_state = "acolytecoat"
	body_parts_covered = LEGS|FEET|ARMS|HANDS|FULL_TORSO
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapaceheavy)
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE +150
	slowdown_general = 0.06
	armor = list(
		melee = ARMOR_MELEE_CARAPACE+1,
		bullet = ARMOR_BALLISTIC_CARAPACE+1,
		laser = ARMOR_LASER_CARAPACE+1,
		energy = ARMOR_ENERGY_TEN+25,
		bio = ARMOR_BIO_THIRTY+30,
		rad = ARMOR_RAD_THIRTY+40,
		bomb = ARMOR_BOMB_THIRTY+5
	)

/obj/item/clothing/suit/armor/grim/agent/inquisitor
	name = "masterwork carapace coat"
	desc = "A masterwork of Carapace Armor, crafted for the Inquisition’s elite agents. Adorned with the sacred Rosette, it radiates authority and the Emperor’s divine protection."
	icon_state = "inqcoat"
	item_state = "inqcoat"
	body_parts_covered = LEGS|FEET|ARMS|HANDS|FULL_TORSO
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapacemaster)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE +250
	slowdown_general = 0.065
	armor = list(
		melee = ARMOR_MELEE_CARAPACE+1,
		bullet = ARMOR_BALLISTIC_CARAPACE+2,
		laser = ARMOR_LASER_CARAPACE+2,
		energy = ARMOR_ENERGY_TEN+35,
		bio = ARMOR_BIO_THIRTY+40,
		rad = ARMOR_RAD_THIRTY+50,
		bomb = ARMOR_BOMB_THIRTY+10
	)

/obj/item/clothing/suit/armor/grim/agent/hereticus
	name = "masterwork carapace coat"
	desc = "A sacred relic forged by the Tech-Priests of Mars, this Inquisitorial coat bears the Rosette, shining with the Emperor’s light. Worn by Inquisitors on their holy path to cleanse heresy with fire and faith."
	icon_state = "hereticuscoat"
	item_state = "hereticuscoat"
	body_parts_covered = LEGS|FEET|ARMS|HANDS|FULL_TORSO
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapacemaster)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE +250
	slowdown_general = 0.065
	armor = list(
		melee = ARMOR_MELEE_CARAPACE+1,
		bullet = ARMOR_BALLISTIC_CARAPACE+2,
		laser = ARMOR_LASER_CARAPACE+2,
		energy = ARMOR_ENERGY_TEN+35,
		bio = ARMOR_BIO_THIRTY+40,
		rad = ARMOR_RAD_THIRTY+50,
		bomb = ARMOR_BOMB_THIRTY+10
	)

/obj/item/clothing/suit/armor/grim/storage/hooded/inqparmor
	name = "relic power armour"
	desc = "An ancient relic of the Mechanicus, sanctified for the Inquisition’s holy war. The engraved Rosette and gleaming surface reflect the Emperor’s divine will, guiding the wearer to annihilate His enemies."
	icon_state = "inqarmor"
	item_state = "inqarmor"
	action_button_name = "Toggle Hood"
	w_class = ITEM_SIZE_GARGANTUAN
	valid_accessory_slots = null // So you can't remove or attach armor acceesories.
	restricted_accessory_slots = null
	accessories = null
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HANDS
	max_pressure_protection = RIG_MAX_PRESSURE
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE +1500
	slowdown_general = 0.11 // Tiny bit slow. Design wise power armor is more rare then a lemun russ tank, it has no downsides. It simply is superior to all other armor.
	hoodtype = /obj/item/clothing/head/inqhood
	armor = list(
		melee = ARMOR_MELEE_POWER_ARM,
		bullet = ARMOR_BALLISTIC_POWER_ARMOUR,
		laser = ARMOR_LASER_POWER_ARMOUR,
		energy = ARMOR_ENERGY_TEN+55,
		bio = ARMOR_BIO_THIRTY+84,
		rad = ARMOR_RAD_THIRTY+86,
		bomb = ARMOR_BOMB_THIRTY+25
	)
/obj/item/clothing/head/inqhood
	name = "carapace hood"
	desc = "A blood red hood with golden trim"
	icon_state = "inqhood"
	item_state = "inqhood"
	max_pressure_protection = RIG_MAX_PRESSURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE +1500
	flags_inv = HIDEMASK|HIDEEYES|HIDEFACE|HIDEEARS|BLOCKHAIR|BLOCKHEADHAIR
	slowdown_general = 0.006
	disorientation = 0.5
	unacidable = 1
	armor = list(
		melee = ARMOR_MELEE_POWER_ARM-1,
		bullet = ARMOR_BALLISTIC_POWER_ARMOUR-1,
		laser = ARMOR_LASER_POWER_ARMOUR-1,
		energy = ARMOR_ENERGY_TEN+55,
		bio = ARMOR_BIO_THIRTY+84,
		rad = ARMOR_RAD_THIRTY+86,
		bomb = ARMOR_BOMB_THIRTY+5
	)

/obj/item/clothing/suit/armor/greypa
	name = "mechanicus power armour"
	desc = "Mechanicus power armour, forged by the Tech-priest of Mars and blessed with runes of blankness, a potent tool against the great enemy."
	icon_state = "knight_grey"
	item_state = "knight_grey"
	w_class = ITEM_SIZE_GARGANTUAN
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HANDS // Mirror of inq p-armor until I have time to code daemon tech.
	max_pressure_protection = RIG_MAX_PRESSURE
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE +1500
	slowdown_general = 0.11
	armor = list(
		melee = ARMOR_MELEE_POWER_ARM,
		bullet = ARMOR_BALLISTIC_POWER_ARMOUR,
		laser = ARMOR_LASER_POWER_ARMOUR,
		energy = ARMOR_ENERGY_TEN+55,
		bio = ARMOR_BIO_THIRTY+84,
		rad = ARMOR_RAD_THIRTY+86,
		bomb = ARMOR_BOMB_THIRTY+25
	)

// ROGUE TRADER RETINUE AND OTHER NOBILITY
// ROGUE TRADER RETINUE AND OTHER NOBILITY
// ROGUE TRADER RETINUE AND OTHER NOBILITY
/obj/item/clothing/suit/armor/grim/noble/governor
	name = "planetary governor's heavy mantle"
	desc = "A lavish and oversized mantle, custom-made for the governoship. Its opulence matches the ruler’s overwhelming presence."
	icon_state = "taxstomach"
	item_state = "taxstomach"
	body_parts_covered = LEGS|FEET|ARMS|HANDS|FULL_TORSO
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapacemaster)
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE +50
	slowdown_general = 0.05 // Light casual armor.
	armor = list(
		melee = ARMOR_MELEE_CARAPACE,
		bullet = ARMOR_BALLISTIC_CARAPACE+1,
		laser = ARMOR_LASER_CARAPACE+1,
		energy = ARMOR_ENERGY_TEN+15,
		bio = ARMOR_BIO_THIRTY+20,
		rad = ARMOR_RAD_THIRTY+30,
		bomb = ARMOR_BOMB_THIRTY-5
	)

/obj/item/clothing/suit/armor/grim/noble/rtcloak
	name = "rogue trader's heavy mantle"
	desc = "A mantle of distinction, worn by Rogue Traders as they navigate the stars and broker imperial dominance. Its weight symbolizes both authority and responsibility."
	icon_state = "lccoat"
	body_parts_covered = LEGS|FEET|ARMS|HANDS|FULL_TORSO
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapace)
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE +50
	slowdown_general = 0.05 // Light casual armor.
	armor = list(
		melee = ARMOR_MELEE_CARAPACE,
		bullet = ARMOR_BALLISTIC_CARAPACE+1,
		laser = ARMOR_LASER_CARAPACE+1,
		energy = ARMOR_ENERGY_TEN+15,
		bio = ARMOR_BIO_THIRTY+20,
		rad = ARMOR_RAD_THIRTY+30,
		bomb = ARMOR_BOMB_THIRTY+5
	)

/obj/item/clothing/suit/armor/grim/noble/rtarmor
	name = "rogue trader's carapace armour"
	desc = "A symbol of the Rogue Trader's command, this carapace armor offers both protection and prestige, marking its wearer as a force to be reckoned with."
	icon_state = "rtarm"
	item_state = "rtarm"
	w_class = ITEM_SIZE_GARGANTUAN
	body_parts_covered = LEGS|FEET|ARMS|HANDS|FULL_TORSO
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapacemaster)
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE +100
	slowdown_general = 0.06 // Heavy but great protection.
	armor = list(
		melee = ARMOR_MELEE_CARAPACE+1,
		bullet = ARMOR_BALLISTIC_CARAPACE+2,
		laser = ARMOR_LASER_CARAPACE+2,
		energy = ARMOR_ENERGY_TEN+35,
		bio = ARMOR_BIO_THIRTY+40,
		rad = ARMOR_RAD_THIRTY+50,
		bomb = ARMOR_BOMB_THIRTY+10
	)

/obj/item/clothing/suit/armor/grim/noble/rtmantle
	name = "rogue trader's light mantle"
	desc = "Elegant yet practical, these robes reflect the Rogue Trader’s flair for both fashion and diplomacy, crafted for light protection and mobility."
	icon_state = "rtdrip"
	item_state = "rtdrip"
	body_parts_covered = LEGS|FEET|ARMS|HANDS|FULL_TORSO
	accessories = list(/obj/item/clothing/accessory/armor_plate/paddingmech) // Even though it's not armor, still has radiological prot
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE
	slowdown_general = 0.02
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_CARAPACE-1,
		laser = ARMOR_LASER_CARAPACE-1,
		energy = ARMOR_ENERGY_TEN+10,
		bio = ARMOR_BIO_THIRTY+10,
		rad = ARMOR_RAD_THIRTY+20,
		bomb = ARMOR_BOMB_THIRTY-10
	)

/obj/item/clothing/suit/armor/ceramiteplate
	name = "ceramite half-plate"
	desc = "A finely crafted set of golden ceramite half-plate, forged by the hands of a master artisan. Some might consider using ceramite for an entire suit excessive, but we don't listen to the hive-scum now do we."
	icon_state = "royalgc"
	item_state = "royalgc"
	w_class = ITEM_SIZE_GARGANTUAN
	body_parts_covered = LEGS|FEET|ARMS|HANDS|FULL_TORSO
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+600
	slowdown_general = 0.14
	armor = list(
		melee = ARMOR_MELEE_POWER_ARM-2,
		bullet = ARMOR_BALLISTIC_POWER_ARMOUR-1,
		laser = ARMOR_LASER_POWER_ARMOUR-1,
		energy = ARMOR_ENERGY_TEN+15,
		bio = ARMOR_BIO_THIRTY+20,
		rad = ARMOR_RAD_THIRTY+30,
		bomb = ARMOR_BOMB_THIRTY+15 // Exceptional at expl resistance
	)

/obj/item/clothing/suit/armor/grim/noble/reddress
	name = "noble red dress"
	desc = "A lavish piece of noble finery, draped in elegance and woven with the finest materials to showcase the wearer’s high station."
	icon_state = "baroness"
	item_state = "baroness"
	body_parts_covered = LEGS|FEET|ARMS|HANDS|FULL_TORSO
	accessories = list(/obj/item/clothing/accessory/armor_plate/flaklamellar) // sewn in armor.
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE
	slowdown_general = 0.05
	armor = list(
		melee = ARMOR_MELEE_CARAPACE,
		bullet = ARMOR_BALLISTIC_CARAPACE+1,
		laser = ARMOR_LASER_CARAPACE+1,
		energy = ARMOR_ENERGY_TEN+15,
		bio = ARMOR_BIO_THIRTY+20,
		rad = ARMOR_RAD_THIRTY+30,
		bomb = ARMOR_BOMB_THIRTY-10
	)

/obj/item/clothing/suit/armor/grim/noble/seneschal
	name = "seneschal's khalat"
	desc = "The ornate khalat of the seneschal. It is made from the finest fabrics this side of the galaxy and interwoven with real gold. Very fancy and well armored."
	icon_state = "senkhalat"
	item_state = "senkhalat"
	body_parts_covered = LEGS|FEET|ARMS|HANDS|FULL_TORSO
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapace)
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE
	slowdown_general = 0.04
	armor = list(
		melee = ARMOR_MELEE_CARAPACE-1,
		bullet = ARMOR_BALLISTIC_CARAPACE,
		laser = ARMOR_LASER_CARAPACE,
		energy = ARMOR_ENERGY_TEN+15,
		bio = ARMOR_BIO_THIRTY+20,
		rad = ARMOR_RAD_THIRTY+30,
		bomb = ARMOR_BOMB_THIRTY-10
	)

/obj/item/clothing/suit/armor/grim/noble/tailcoat
	name = "noble tailcoat"
	desc = "An ornate tailcoat, designed to elevate any suit into a display of extravagance and high status."
	icon_state = "tailcoat"
	item_state = "tailcoat"
	body_parts_covered = LEGS|ARMS|HANDS|FEET|FULL_TORSO
	accessories = list(/obj/item/clothing/accessory/armor_plate/paddingheavy)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE-300
	slowdown_general = 0.02
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK-2,
		energy = ARMOR_ENERGY_TEN-3,
		bio = ARMOR_BIO_THIRTY+10,
		rad = ARMOR_RAD_THIRTY+20,
		bomb = ARMOR_BOMB_TEN
		)

/obj/item/clothing/suit/armor/grim/noble/ladycoat
	name = "noble feminine coat"
	desc = "A finely tailored coat, stylish and elegant, befitting a noblewoman of high society."
	icon = 'icons/mob/onmob/suit.dmi'
	icon_state = "tailcoatgirlblack"
	item_state = "tailcoatgirlblack"
	body_parts_covered = LEGS|ARMS|HANDS|FEET|FULL_TORSO
	accessories = list(/obj/item/clothing/accessory/armor_plate/paddingheavy)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE-300
	slowdown_general = 0.02
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK-2,
		energy = ARMOR_ENERGY_TEN-3,
		bio = ARMOR_BIO_THIRTY+10,
		rad = ARMOR_RAD_THIRTY+20,
		bomb = ARMOR_BOMB_TEN
		)

/obj/item/clothing/suit/armor/grim/noble/ladycoat/red
	icon_state = "tailcoatladiesred"
	item_state = "tailcoatladiesred"

/obj/item/clothing/suit/armor/grim/noble/tailcoat/black
	icon_state = "tailcoatb"
	item_state = "tailcoatb"

/obj/item/clothing/suit/armor/grim/noble/ladycoat/grey
	icon_state = "ladiesvictoriancoatg"
	item_state = "ladiesvictoriancoatg"

/obj/item/clothing/suit/armor/grim/noble/officer
	name = "padded overcoat"
	desc = "An ellegant studded coat worn by the illustrious members of a voidcraft's bridge crew."
	icon_state = "castellan"
	item_state = "castellan"
	body_parts_covered = LEGS|ARMS|HANDS|FEET|FULL_TORSO
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapace)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE-300
	slowdown_general = 0.035
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK-1,
		energy = ARMOR_ENERGY_TEN-3,
		bio = ARMOR_BIO_THIRTY+10,
		rad = ARMOR_RAD_THIRTY+20,
		bomb = ARMOR_BOMB_TEN
		)

// MERCANTILE
// MERCANTILE
// MERCANTILE

/obj/item/clothing/suit/armor/grim/kroot
	name = "carapace mantle"
	desc = "Organic armor layered to enhance Kroot resilience, the Carapace Mantle provides crucial protection against a variety of threats while allowing for the freedom of movement that Kroot require."
	icon_state = "merc"
	item_state = "merc"
	body_parts_covered = LEGS|ARMS|HANDS|FEET|FULL_TORSO
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapace)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE
	slowdown_general = 0.03
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_TEN+5,
		rad = ARMOR_RAD_THIRTY+25,
		bio = ARMOR_BIO_THIRTY+15,
		bomb = ARMOR_BOMB_TEN+5
		)


/obj/item/clothing/suit/armor/grim/merc
	name = "mercenary flak armour"
	desc = "An altered fabrication of Imperial Pattern Flak Armor - this particular version is commonly used by mercenaries guilds in service to the renegade houses of the frontier."
	icon_state = "merc"
	item_state = "merc"
	body_parts_covered = LEGS|ARMS|HANDS|FEET|FULL_TORSO
	accessories = list(/obj/item/clothing/accessory/armor_plate/flak) // All flak armors should use plate/medium unless shoddy
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE-100 // Consider militarum patterns to have good rad and temp resistance so we don't get guardsmen in EVA suits
	slowdown_general = 0.03
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK-2,
		energy = ARMOR_ENERGY_TEN-4,
		rad = ARMOR_RAD_THIRTY-5,
		bio = ARMOR_BIO_THIRTY-5,
		bomb = ARMOR_BOMB_TEN-6
		)

/obj/item/clothing/suit/armor/grim/merc/carapace
	name = "mercenary carapace armour"
	desc = "An altered fabrication of Imperial Pattern Carapace Armor - this particular version is commonly used by mercenaries guilds in service to the renegade houses of the frontier."
	icon_state = "explorer"
	item_state = "explorer"
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapace)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE // Merc gear is outfitted for combat not extended ops
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+100
	slowdown_general = 0.05
	armor = list(
		melee = ARMOR_MELEE_CARAPACE-1,
		bullet = ARMOR_BALLISTIC_CARAPACE-1,
		laser = ARMOR_LASER_CARAPACE-1,
		energy = ARMOR_ENERGY_TEN,
		rad = ARMOR_RAD_THIRTY+10,
		bio = ARMOR_BIO_THIRTY+5,
		bomb = ARMOR_BOMB_TEN+5
		)

/obj/item/clothing/suit/armor/grim/merc/heavyflak
	name = "heavy flak suit"
	desc = "Custom-made for brutal close-quarters combat, this heavy flak suit compensates for its restrictive nature with exceptional protection against small arms and explosions."
	icon_state = "meister"
	item_state = "meister"
	w_class = ITEM_SIZE_GARGANTUAN
	accessories = list(/obj/item/clothing/accessory/armor_plate/flakheavy)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+150
	slowdown_general = 0.062 // Same defense as carapace but much heavier.
	armor = list(
		melee = ARMOR_MELEE_CARAPACE-1,
		bullet = ARMOR_BALLISTIC_CARAPACE-1,
		laser = ARMOR_LASER_CARAPACE-1,
		energy = ARMOR_ENERGY_TEN,
		rad = ARMOR_RAD_THIRTY+15,
		bio = ARMOR_BIO_THIRTY+10,
		bomb = ARMOR_BOMB_TEN+5
		)

/obj/item/clothing/suit/armor/grim/armoredtrench
	name = "armoured trenchcoat"
	desc = "A masterwork trenchcoat reinforced with carapace plates and fitted with iron-alloy chausses and pauldrons, offering superior protection and style unique to Messina."
	icon_state = "towntrench_heavy"
	item_state = "towntrench_heavy"
	body_parts_covered = LEGS|FEET|ARMS|HANDS|FULL_TORSO
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapace)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+100
	slowdown_general = 0.35
	armor = list(
		melee = ARMOR_MELEE_CARAPACE,
		bullet = ARMOR_BALLISTIC_CARAPACE,
		laser = ARMOR_LASER_CARAPACE,
		energy = ARMOR_ENERGY_TEN+10,
		bio = ARMOR_BIO_THIRTY+10,
		rad = ARMOR_RAD_THIRTY+25,
		bomb = ARMOR_BOMB_THIRTY
	)

/obj/item/clothing/suit/armor/ancientpowerarmor
	name = "ancient power armour"
	desc = "Heavy power armor forged in the lower-hives of some distant forge-world, likely by an aspiring tech priest. Despite its poor craftsmanship, it offers the raw protective might of technical power armor."
	icon_state = "lightpa2"
	item_state = "lightpa2"
	w_class = ITEM_SIZE_GARGANTUAN
	body_parts_covered = LEGS|FEET|ARMS|HANDS|FULL_TORSO
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+600
	slowdown_general = 0.12
	armor = list(
		melee = ARMOR_MELEE_POWER_ARM-1,
		bullet = ARMOR_BALLISTIC_POWER_ARMOUR-1,
		laser = ARMOR_LASER_POWER_ARMOUR-1,
		energy = ARMOR_ENERGY_TEN+25,
		bio = ARMOR_BIO_THIRTY+30,
		rad = ARMOR_RAD_THIRTY+40,
		bomb = ARMOR_BOMB_THIRTY+5
	)

/obj/item/clothing/suit/armor/berserkerpowerarmor
	name = "xenos power armour"
	desc = "A brutal set of Berserker Power Armor, forged in the depths of an ancient xenos city millenia ago. It radiates raw rage and power, immune to the touch of fire, and stirs the soul with relentless fury. A living metal of twisted alien malice."
	icon_state = "berserker"
	item_state = "berserker"
	w_class = ITEM_SIZE_GARGANTUAN
	body_parts_covered = LEGS|FEET|ARMS|HANDS|FULL_TORSO
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+1100
	slowdown_general = 0.11
	armor = list(
		melee = ARMOR_MELEE_POWER_ARM,
		bullet = ARMOR_BALLISTIC_POWER_ARMOUR+1, // Very good because it's instant death for anyone wearing it.
		laser = ARMOR_LASER_POWER_ARMOUR+1,
		energy = ARMOR_ENERGY_TEN+30,
		bio = ARMOR_BIO_THIRTY+30,
		rad = ARMOR_RAD_THIRTY+50,
		bomb = ARMOR_BOMB_THIRTY+15
	)

/obj/item/clothing/suit/armor/renegadepowerarmour
	name = "renegade power armour"
	desc = "Masterwork power armor forged and used by the renegade navigator houses."
	icon_state = "t51bgs"
	item_state = "t51bgs"
	w_class = ITEM_SIZE_GARGANTUAN
	body_parts_covered = LEGS|FEET|ARMS|HANDS|FULL_TORSO
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+900
	slowdown_general = 0.12
	armor = list(
		melee = ARMOR_MELEE_POWER_ARM,
		bullet = ARMOR_BALLISTIC_POWER_ARMOUR,
		laser = ARMOR_LASER_POWER_ARMOUR,
		energy = ARMOR_ENERGY_TEN+30,
		bio = ARMOR_BIO_THIRTY+20,
		rad = ARMOR_RAD_THIRTY+40,
		bomb = ARMOR_BOMB_THIRTY+15
	)

/obj/item/clothing/suit/armor/grim/ghillieflak
	name = "ghillie suit"
	desc = "An oddly ineffective ghillie suit, designed without regard for the harsh, reflective environment of an ice world."
	icon_state = "fox"
	item_state = "fox"
	w_class = ITEM_SIZE_GARGANTUAN
	body_parts_covered = LEGS|FEET|ARMS|HANDS|FULL_TORSO
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapace)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+40
	slowdown_general = 0.05
	armor = list(
		melee = ARMOR_MELEE_CARAPACE-1,
		bullet = ARMOR_BALLISTIC_CARAPACE-1,
		laser = ARMOR_LASER_CARAPACE-1,
		energy = ARMOR_ENERGY_TEN+10,
		bio = ARMOR_BIO_THIRTY+20,
		rad = ARMOR_RAD_THIRTY+35,
		bomb = ARMOR_BOMB_THIRTY-5
	)

/obj/item/clothing/suit/armor/seolarmor
	name = "xenos robes"
	desc = "Armored robes of Seolite origin, engineered to ward off lasburns and perhaps even more sinister threats."
	icon_state = "scribe"
	item_state = "scribe"
	body_parts_covered = LEGS|FEET|ARMS|HANDS|FULL_TORSO
	max_pressure_protection = VOIDSUIT_MAX_PRESSURE
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE +100
	slowdown_general = 0.08
	armor = list(
		melee = ARMOR_MELEE_CARAPACE-2,
		bullet = ARMOR_BALLISTIC_CARAPACE-1,
		laser = ARMOR_LASER_CARAPACE,
		energy = ARMOR_ENERGY_TEN+25,
		bio = ARMOR_BIO_THIRTY+30,
		rad = ARMOR_RAD_THIRTY+40,
		bomb = ARMOR_BOMB_THIRTY
	)

/obj/item/clothing/suit/armor/seolsuit
	name = "xenos anomaly suit"
	desc = "Forged by the strange xenos of this barren ice-world, it seeems to have an advanced protective field wrapping around it."
	icon_state = "spacer"
	item_state = "spacer"
	w_class = ITEM_SIZE_GARGANTUAN
	body_parts_covered = LEGS|FEET|ARMS|HANDS|FULL_TORSO | HEAD
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE +1000
	slowdown_general = 0.12
	armor = list(
		melee = ARMOR_MELEE_CARAPACE+1,
		bullet = ARMOR_BALLISTIC_CARAPACE+2,
		laser = ARMOR_LASER_CARAPACE+2,
		energy = ARMOR_ENERGY_TEN+25,
		bio = ARMOR_BIO_THIRTY+30,
		rad = ARMOR_RAD_THIRTY+40,
		bomb = ARMOR_BOMB_THIRTY+20
	)

/obj/item/clothing/suit/armor/seolsuit/mob_can_equip(mob/living/carbon/human/user, slot)
	if(slot == slot_head)
		to_chat(user, "The anomaly suit already covers your head, you cannot wear a helmet.")
		return FALSE
	return ..()

/obj/item/clothing/suit/armor/grim/scrapforged
	name = "scrap-forged flak armour"
	desc = "Unmarked flak armor manufactured by the underhives of the ghoul stars."
	icon_state = "flak1"
	item_state = "flak1"
	body_parts_covered = LEGS|ARMS|HANDS|FEET|FULL_TORSO
	accessories = list(/obj/item/clothing/accessory/armor_plate/flak)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE-100
	slowdown_general = 0.025
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK-2,
		laser = ARMOR_LASER_FLAK-2,
		energy = ARMOR_ENERGY_TEN-1,
		bio = ARMOR_BIO_THIRTY,
		rad = ARMOR_RAD_THIRTY+10,
		bomb = ARMOR_BOMB_TEN
	)

/obj/item/clothing/suit/armor/grim/scrapforged/vest
	name = "scrap-forged flak vest"
	desc = "Unmarked flak vest manufactured by the underhives of the ghoul stars."
	icon_state = "flak2"
	item_state = "flak2"
	body_parts_covered = ARMS
	accessories = list(/obj/item/clothing/accessory/armor_plate/flaklamellar)
	slowdown_general = 0.017

/obj/item/clothing/suit/armor/grim/scrapforged/heavyflak
	name = "scrap-forged heavy flak armour"
	desc = "Shoddy flak armor worn by members of House Goliath, it seems unlikely to protect you from much more then a blade."
	icon_state = "raider_combat"
	item_state = "raider_combat"
	body_parts_covered = LEGS|ARMS|HANDS|FEET|FULL_TORSO
	accessories = list(/obj/item/clothing/accessory/armor_plate/flakheavy)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE-100
	slowdown_general = 0.035
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK-1,
		energy = ARMOR_ENERGY_TEN-1,
		bio = ARMOR_BIO_THIRTY,
		rad = ARMOR_RAD_THIRTY+10,
		bomb = ARMOR_BOMB_TEN
	)

/obj/item/clothing/suit/armor/grim/scrapforged/carapace
	name = "scrap-forged carapace armour"
	desc = "Unmarked carapace armor manufactured by the underhives of the ghoul stars."
	icon_state = "carapace2"
	item_state = "carapace2"
	body_parts_covered = LEGS|ARMS|HANDS|FEET|FULL_TORSO
	max_pressure_protection = VOIDSUIT_MAX_PRESSURE
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapace)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+50
	slowdown_general = 0.065
	armor = list(
		melee = ARMOR_MELEE_CARAPACE-1,
		bullet = ARMOR_BALLISTIC_CARAPACE-1,
		laser = ARMOR_LASER_CARAPACE-1,
		energy = ARMOR_ENERGY_TEN+10,
		bio = ARMOR_BIO_THIRTY+5,
		rad = ARMOR_RAD_THIRTY+15,
		bomb = ARMOR_BOMB_TEN+10
	)

/obj/item/clothing/suit/armor/grim/scrapforged/carapace2
	name = "scrap-forged carapace armour"
	desc = "Unmarked carapace armor manufactured by the underhives of the ghoul stars."
	icon_state = "carapace3"
	item_state = "carapace3"

/obj/item/clothing/suit/armor/grim/scrapforged/carapace3
	name = "scrap-forged carapace suit"
	desc = "Unmarked carapace armor manufactured by the underhives of the ghoul stars."
	icon_state = "carapace4"
	item_state = "carapace4"
	slowdown_general = 0.075
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapaceheavy)
	armor = list(
		melee = ARMOR_MELEE_CARAPACE,
		bullet = ARMOR_BALLISTIC_CARAPACE,
		laser = ARMOR_LASER_CARAPACE,
		energy = ARMOR_ENERGY_TEN+15,
		bio = ARMOR_BIO_THIRTY+15,
		rad = ARMOR_RAD_THIRTY+25,
		bomb = ARMOR_BOMB_TEN+20
	)

/obj/item/clothing/suit/armor/grim/scrapforged/heavyplate
	name = "heavy flak plate armour"
	desc = "A crude heavy plate armor, commonly worn by gang enforcers. Though functional, it is forged from salvaged metals and lacks the refinement of military-grade carapace."
	icon_state = "paladin"
	item_state = "paladin"
	body_parts_covered = LEGS|FEET|ARMS|HANDS|FULL_TORSO
	accessories = list(/obj/item/clothing/accessory/armor_plate/flakheavy)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+50
	slowdown_general = 0.065
	armor = list(
		melee = ARMOR_MELEE_CARAPACE-1,
		bullet = ARMOR_BALLISTIC_FLAK+1,
		laser = ARMOR_LASER_FLAK+1,
		energy = ARMOR_ENERGY_TEN+10,
		bio = ARMOR_BIO_THIRTY+10,
		rad = ARMOR_RAD_THIRTY+15,
		bomb = ARMOR_BOMB_TEN+5
	)

/obj/item/clothing/suit/armor/grim/scrapforged/heavycuirass
	name = "flak plate armour"
	desc = "A light cuirass of ganger origin, crudely manufactured but made from rare metals that provide adequate protection."
	icon_state = "venator"
	item_state = "venator"
	accessories = list(/obj/item/clothing/accessory/armor_plate/flaklamellar)
	body_parts_covered = LEGS|FEET|ARMS|HANDS|FULL_TORSO
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE
	slowdown_general = 0.06
	armor = list(
		melee = ARMOR_MELEE_CARAPACE-1,
		bullet = ARMOR_BALLISTIC_FLAK+1,
		laser = ARMOR_LASER_FLAK+1,
		energy = ARMOR_ENERGY_TEN+10,
		bio = ARMOR_BIO_THIRTY+10,
		rad = ARMOR_RAD_THIRTY+15,
		bomb = ARMOR_BOMB_TEN
	)


/obj/item/clothing/suit/armor/grim/scrapforged/duster
	name = "armoured duster"
	desc = "A duster with a flak plate insert, sewn together with shafra leather."
	icon_state = "talon_duster"
	item_state = "talon_duster"
	accessories = list(/obj/item/clothing/accessory/armor_plate/flak)
	body_parts_covered = LEGS|FEET|ARMS|HANDS|FULL_TORSO
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE
	slowdown_general = 0.06
	armor = list(
		melee = ARMOR_MELEE_CARAPACE-1,
		bullet = ARMOR_BALLISTIC_FLAK+1,
		laser = ARMOR_LASER_FLAK+1,
		energy = ARMOR_ENERGY_TEN+10,
		bio = ARMOR_BIO_THIRTY+10,
		rad = ARMOR_RAD_THIRTY+15,
		bomb = ARMOR_BOMB_TEN
	)

/obj/item/clothing/suit/armor/grim/scrapforged/ranger
	name = "armoured duster"
	desc = "A duster with carapace plate inserts, sewn together with shafra leather."
	icon_state = "ranger"
	item_state = "ranger"
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapace)
	body_parts_covered = LEGS|FEET|ARMS|HANDS|FULL_TORSO
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE
	slowdown_general = 0.06
	armor = list(
		melee = ARMOR_MELEE_CARAPACE-1,
		bullet = ARMOR_BALLISTIC_FLAK+1,
		laser = ARMOR_LASER_FLAK+1,
		energy = ARMOR_ENERGY_TEN+10,
		bio = ARMOR_BIO_THIRTY+10,
		rad = ARMOR_RAD_THIRTY+15,
		bomb = ARMOR_BOMB_TEN
	)

/obj/item/clothing/suit/armor/grim/scrapforged/ranger2
	name = "colonial ranger duster"
	desc = "A duster with a flak plate insert, sewn together with grox leather."
	icon_state = "ranger2"
	item_state = "ranger2"
	accessories = list(/obj/item/clothing/accessory/armor_plate/flak)
	body_parts_covered = LEGS|FEET|ARMS|HANDS|FULL_TORSO
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE
	slowdown_general = 0.06
	armor = list(
		melee = ARMOR_MELEE_CARAPACE-1,
		bullet = ARMOR_BALLISTIC_FLAK+1,
		laser = ARMOR_LASER_FLAK+1,
		energy = ARMOR_ENERGY_TEN+10,
		bio = ARMOR_BIO_THIRTY+10,
		rad = ARMOR_RAD_THIRTY+15,
		bomb = ARMOR_BOMB_TEN
	)

/obj/item/clothing/suit/armor/grim/scrapforged/ranger3
	name = "flak duster"
	desc = "A duster with a flak plate insert, sewn together with grox leather."
	icon_state = "ranger3"
	item_state = "ranger3"
	accessories = list(/obj/item/clothing/accessory/armor_plate/flak)
	body_parts_covered = LEGS|FEET|ARMS|HANDS|FULL_TORSO
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE
	slowdown_general = 0.06
	armor = list(
		melee = ARMOR_MELEE_FLAK+1,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_TEN+10,
		bio = ARMOR_BIO_THIRTY+10,
		rad = ARMOR_RAD_THIRTY+15,
		bomb = ARMOR_BOMB_TEN
	)

/obj/item/clothing/suit/armor/grim/scrapforged/flakcuirass
	name = "heavy flak cuirass"
	desc = "Unmarked heavy flak armor manufactured by the underhives of the ghoul stars."
	icon_state = "necromundaflak"
	item_state = "necromundaflak"
	accessories = list(/obj/item/clothing/accessory/armor_plate/flakheavy)
	body_parts_covered = LEGS|FEET|ARMS|HANDS|FULL_TORSO
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE
	slowdown_general = 0.06
	armor = list(
		melee = ARMOR_MELEE_CARAPACE-1,
		bullet = ARMOR_BALLISTIC_FLAK+1,
		laser = ARMOR_LASER_FLAK+1,
		energy = ARMOR_ENERGY_TEN+10,
		bio = ARMOR_BIO_THIRTY+10,
		rad = ARMOR_RAD_THIRTY+15,
		bomb = ARMOR_BOMB_TEN
	)

/obj/item/clothing/suit/armor/grim/scrapforged/carapacecuirass
	name = "heavy carapace cuirass"
	desc = "Unmarked heavy carapace armor manufactured by the underhives of the ghoul stars."
	icon_state = "necromundacarapace"
	item_state = "necromundacarapace"
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapaceheavy)
	body_parts_covered = LEGS|FEET|ARMS|HANDS|FULL_TORSO
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE
	slowdown_general = 0.08
	armor = list(
		melee = ARMOR_MELEE_CARAPACE-1,
		bullet = ARMOR_BALLISTIC_CARAPACE-1,
		laser = ARMOR_LASER_CARAPACE-1,
		energy = ARMOR_ENERGY_TEN+10,
		bio = ARMOR_BIO_THIRTY+10,
		rad = ARMOR_RAD_THIRTY+15,
		bomb = ARMOR_BOMB_TEN
	)





/*

 UNFINISHED ARMOURS
/obj/item/clothing/suit/armor/vessor
	name = "Vessorine Carapace"
	desc = "A light bodysuit with carapace plates overlayn like an exterior scale-mail, the suit appears to be powered."
	icon_state = "uegarmor"
	item_state = "uegarmor"
	armor = list(melee = 9, bullet = 34, laser = 33, energy = 30, bomb = 40, bio = 30, rad = 30)
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/lasgun/)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS|HANDS|FEET
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	sales_price = 40



// admeme only

/obj/item/clothing/suit/armor/ogryn1 // only give this to ogryns. it cannot be removed and has head protection.
	name = "Ogryn Armor"
	desc = "Protects ya stomach from dem flashie stingy things."
	icon_state = "ogryn1"
	item_state = "ogryn1"
	armor = list(melee = 8, bullet = 31, laser = 31, energy = 31, bomb = 30, bio = 30, rad = 20)
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/lasgun/)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|HANDS|FEET|HEAD
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	sales_price = 0
	canremove = 0

/obj/item/clothing/suit/armor/ogryn2
	name = "Ogryn Armor"
	desc = "Protects ya stomach from dem flashie stingy things."
	icon_state = "ogryn2"
	item_state = "ogryn2"
	armor = list(melee = 10, bullet = 30, laser = 30, energy = 30, bomb = 30, bio = 30, rad = 20)
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/lasgun/)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|HANDS|FEET|HEAD
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	sales_price = 0
	canremove = 0

/obj/item/clothing/suit/armor/shadowbeast // ADMIN ONLY DONT FUKKIN GIVE ANYONE THIS.
	name = "Beastly garb."
	desc = "DO YOU SEE ME."
	icon_state = "shadow"
	item_state = "shadow"
	armor = list(melee = 12, bullet = 49, laser = 49, energy = 39, bomb = 50, bio = 100, rad = 100)
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/lasgun/)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|HANDS|FEET|HEAD
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	sales_price = 0
/obj/item/clothing/suit/armor/shadowbeast/New()
	..()
	slowdown_per_slot[slot_wear_suit] = -1

/obj/item/clothing/suit/armor/vindicare
	name = "Vindicare armour"
	desc = "The armoured bodysuit of a Vindicare assassin."
	armor = list(melee = 12, bullet = 46, laser = 46, energy = 35, bomb = 20, bio = 100, rad = 100)
	icon_state = "s-ninja"
	item_state = "s-ninja"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS|HANDS|FEET
	cold_protection = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	str_requirement = 18
	canremove = 0
	siemens_coefficient = 0
	sales_price = 250
/obj/item/clothing/suit/armor/vindicare/New()
	..()
	slowdown_per_slot[slot_wear_suit] = -0.5

/obj/item/clothing/suit/armor/thallax
	name = "Thallax Armour"
	desc = "Heavy armour which makes up the main body of a Thallax Warrior"
	icon_state = "lightpa2"
	item_state = "lightpa2"
	armor = list(melee = 12, bullet = 46, laser = 46, energy = 34, bomb = 20, bio = 100, rad = 100)
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/lasgun/)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS|HANDS|FEET
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	canremove = 0




/obj/item/clothing/suit/armor/grot // only give this to gretchin, tiny sprite
	name = "Tiny plate armor"
	desc = "A scavenged metal plate made for the training of local children now worn by a grot."
	icon_state = "Grotarmor"
	item_state = "Grotarmor"
	armor = list(melee = 5, bullet = 20, laser = 18, energy = 20, bomb = 30, bio = 30, rad = 20)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE


/obj/item/clothing/suit/armor/grot/grccooat
	name = "GRC Coat"
	desc = "A coat worn by the leaders of the GRC rising up against their ork opressors."
	icon_state = "GRCcoat"
	item_state = "GRCcoat"

/obj/item/clothing/suit/armor/grot/grcplate
	name = "GRC Plate armor"
	desc = "Suit of a true freedom fighter, fight with your fellow GRC members against your greenskin opressors."
	icon_state = "GRCarmor"
	item_state = "GRCarmor"

/obj/item/clothing/suit/armor/necron
	name = "Necron Armour"
	desc = "The main armoured body of a Necron."
	armor = list(melee = 12, bullet = 49, laser = 49, energy = 49, bomb = 20, bio = 100, rad = 100)
	icon_state = null
	item_state = null
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS|HANDS|FEET
	cold_protection = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	canremove = 0
	unacidable = 1
	siemens_coefficient = 0
	species_restricted = list(SPECIES_NECRON)

/obj/item/clothing/suit/storage/hooded/inquisitor/chronos
	name = "Ordo Chronos Armour"
	desc = "Mysterious armour belonging to the strange Inquisitors of the ordo Chronos, this suit seems to warp space around it."
	icon_state = "inqarmor"
	item_state = "inqarmor"
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/lasgun/)
	armor = list(melee = 100, bullet = 100, laser = 100, energy = 100, bomb = 100, bio = 100, rad = 100) //Ordo Chronos bullshit, and it's event armour.
	sales_price = 0
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS | HEAD| FACE | EYES
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS|HANDS|FEET
	action_button_name = "Toggle Hood"
	hoodtype = /obj/item/clothing/head/inqhood

/obj/item/clothing/suit/storage/hooded/inquisitor/chronos/New()
	..()
	slowdown_per_slot[slot_wear_suit] = -0.5


/obj/item/clothing/suit/storage/hooded/inquisitor/chronos/Initialize()
	. = ..()


/obj/item/clothing/suit/storage/hooded/inquisitor/chronos/handle_shield(mob/user, var/damage, atom/damage_source = null, mob/attacker = null, var/def_zone = null, var/attack_text = "the attack")
	if(istype(damage_source, /obj/item/projectile))
		var/obj/item/projectile/P = damage_source
		var/datum/effect/effect/system/spark_spread/spark_system = new /datum/effect/effect/system/spark_spread()
		spark_system.set_up(5, 0, user.loc)
		spark_system.start()
		playsound(user.loc, "sparks", 50, 1)
		user.visible_message("<span class='danger'>[user]'s shields deflect [attack_text] in a shower of sparks!</span>")
		START_PROCESSING(SSobj, src)
		del(P)
	else
		user.visible_message("<span class='danger'>\The [user]'s temporal field warps the [attack_text] around them!</span>")
		return 100


/obj/item/clothing/suit/storage/hooded/inquisitor/chronos/Destroy()
	STOP_PROCESSING(SSobj, src)
	return ..()

/obj/item/clothing/suit/storage/hooded/inquisitor/chronos/Process()
	return ..()

/obj/item/clothing/suit/storage/hooded/inquisitor/chronos
	name = "Ordo Chronos Armour"
	desc = "Mysterious armour belonging to the strange Inquisitors of the ordo Chronos, this suit seems to warp space around it."
	icon_state = "inqarmor"
	item_state = "inqarmor"
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/lasgun/)
	armor = list(melee = 100, bullet = 100, laser = 100, energy = 100, bomb = 100, bio = 100, rad = 100) //Ordo Chronos bullshit, and it's event armour.
	sales_price = 0
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS | HEAD| FACE | EYES
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS|HANDS|FEET
	action_button_name = "Toggle Hood"
	hoodtype = /obj/item/clothing/head/inqhood

/obj/item/clothing/suit/storage/hooded/inquisitor/chronos/New()
	..()
	slowdown_per_slot[slot_wear_suit] = -0.5


/obj/item/clothing/suit/storage/hooded/inquisitor/chronos/Initialize()
	. = ..()


/obj/item/clothing/suit/storage/hooded/archeotech
	name = "Archeotech Armour"
	desc = "This armour is clearly antique, seemingly predating the Imperium entirely."
	icon_state = "military_rig_sealed"
	item_state = "military_rig_sealed"
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/lasgun/)
	armor = list(melee = 100, bullet = 100, laser = 100, energy = 100, bomb = 100, bio = 100, rad = 100) //Archeotech, and it's event armour.
	sales_price = 0
	canremove = 0
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS | HEAD| FACE | EYES
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS|HANDS|FEET
	action_button_name = "Toggle Helmet"
	hoodtype = /obj/item/clothing/head/helmet/archoetech
	var/displaced = 0

/obj/item/clothing/suit/storage/hooded/archeotech/New()
	..()
	slowdown_per_slot[slot_wear_suit] = -0.5

/obj/item/clothing/suit/storage/hooded/archeotech/update_icon()
	if(suittoggled)
		icon_state = "military_rig_sealed"
	else
		icon_state = "military_rig_sealed"


/obj/item/clothing/suit/storage/hooded/archeotech/Initialize()
	. = ..()

/obj/item/clothing/suit/storage/hooded/archeotech/handle_shield(mob/user, var/damage, atom/damage_source = null, mob/attacker = null, var/def_zone = null, var/attack_text = "the attack")
	if(istype(damage_source, /obj/item/projectile))
		var/obj/item/projectile/P = damage_source
		user.visible_message("<span class='danger'>[attack_text] splashes harmlessly against [user]'s armour!</span>")
		START_PROCESSING(SSobj, src)
		del(P)
	else
		user.visible_message("<span class='danger'>\The [attack_text] splashes harmlessly against [user]'s armour!</span>")
		return 100


/obj/item/clothing/suit/storage/hooded/archeotech/Destroy()
	STOP_PROCESSING(SSobj, src)
	return ..()

/obj/item/clothing/suit/storage/hooded/archeotech/Process()
	return ..()

/obj/item/clothing/suit/storage/hooded/archeotech/verb/activaterifle()
	set name = "Activate Archeotech Rifle"
	set category = "Weapons"
	set src in usr
	if(!usr.canmove || usr.stat || usr.restrained())
		return
	else
		to_chat(usr,"You activate your integrated Storm Bolter.")
		usr.put_in_hands(new /obj/item/gun/energy/archeotech/integrated(usr))

/obj/item/clothing/head/helmet/archoetech
	name = "Archeotech Helmet"
	desc = "An ancient looking helmet."
	icon_state = "military_rig"
	item_state = "military_rig"
	armor = list(melee = 100, bullet = 100, laser = 100, energy = 100, bomb = 100, bio = 100, rad = 100)
	siemens_coefficient = 0
	canremove = 0
	siemens_coefficient = 0
	unacidable = 1
	body_parts_covered = HEAD|FACE|EYES

/obj/item/clothing/suit/storage/hooded/archeotech/verb/temporaldisplace()
	set name = "Toggle Temporal Displacement"
	set category = "Abilities"
	set src in usr
	if(displaced == 0)
		usr.transforming = 1 //protects the mob from being transformed (replaced) midjaunt and getting stuck in bluespace
		if(usr.buckled)
			usr.buckled.unbuckle_mob()
		spawn(0)
			var/mobloc = get_turf(usr.loc)
			var/obj/effect/dummy/spell_jaunt/holder = new /obj/effect/dummy/spell_jaunt( mobloc )
			var/atom/movable/overlay/animation = new /atom/movable/overlay( mobloc )
			animation.SetName("water")
			animation.set_density(0)
			animation.anchored = 1
			animation.icon = 'icons/mob/mob.dmi'
			animation.layer = 5
			animation.master = holder
			if(usr.buckled)
				usr.buckled = null
			displace_disappear(animation, usr)
			usr.loc = holder
			usr.transforming=0 //mob is safely inside holder now, no need for protection.
			to_chat(usr, "<span class='notice'>You seperate yourself from the timestream, displacing yourself a fraction out of time.</span>")
			displaced = 1
	else
		var/mobloc = get_turf(usr.loc)
		var/obj/effect/dummy/spell_jaunt/holder = new /obj/effect/dummy/spell_jaunt( mobloc )
		var/atom/movable/overlay/animation = new /atom/movable/overlay( mobloc )
		mobloc = holder.last_valid_turf
		animation.loc = mobloc
		usr.canmove = 0
		holder.reappearing = 1
		//sleep(20)
		displace_reappear(animation, usr)
		sleep(5)
		if(!usr.forceMove(mobloc))
			for(var/direction in list(1,2,4,8,5,6,9,10))
				var/turf/T = get_step(mobloc, direction)
				if(T)
					if(usr.forceMove(T))
						break
		usr.canmove = 1
		usr.client.eye = usr
		to_chat(usr, "<span class='notice'>You return yourself to normal time.</span>")
		displaced = 0
		qdel(animation)
		qdel(holder)



/obj/item/clothing/suit/storage/hooded/archeotech/proc/displace_disappear(var/atom/movable/overlay/animation, usr)
	animation.icon_state = "liquify"
	flick("liquify",animation)

/obj/item/clothing/suit/storage/hooded/archeotech/proc/displace_reappear(var/atom/movable/overlay/animation, usr)
	flick("reappear",animation)

/obj/item/clothing/suit/storage/hooded/archeotech/verb/archeocloak(mob/user)
	set name = "Toggle Photonic Distortion Field"
	set category = "Abilities"
	set src in usr
	if(user.alpha == 255)
		var/mobloc = get_turf(user.loc)
		var/obj/effect/dummy/spell_jaunt/holder = new /obj/effect/dummy/spell_jaunt( mobloc )
		var/atom/movable/overlay/animation = new /atom/movable/overlay( mobloc )
		mobloc = holder.last_valid_turf
		animation.loc = mobloc
		to_chat(user, "<span class='notice'>You activate the Photonic Distortion Field.</span>")
		user.alpha = 0
		animation.icon_state = "cloak"
		flick("liquify",animation)
	else
		var/mobloc = get_turf(user.loc)
		var/obj/effect/dummy/spell_jaunt/holder = new /obj/effect/dummy/spell_jaunt( mobloc )
		var/atom/movable/overlay/animation = new /atom/movable/overlay( mobloc )
		mobloc = holder.last_valid_turf
		animation.loc = mobloc
		to_chat(user, "<span class='notice'>You disable the Photonic Distortion Field.</span>")
		user.alpha = 255
		animation.icon_state = "uncloak"
		flick("liquify",animation)

/obj/item/storage/backpack/tau
	name = "Archeotech Backpack"
	desc = "An ancient looking backpack."
	icon_state = "ert_commander"
	item_state_slots = list(
		slot_l_hand_str = "securitypack",
		slot_r_hand_str = "securitypack",
		)
	canremove = 0
	max_storage_space = 36






*/
