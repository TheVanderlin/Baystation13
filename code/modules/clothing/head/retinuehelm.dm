
// The Governor Stuff


/obj/item/clothing/head/helmet/pilgrimcap/inquisitor
	name = "cappello romano"
	desc = "A round wide-brimmed hat worn by more traditional Roman Catholic clergy."
	icon_state = "brim-hat"
	item_state = "brim-hat"
	flags_inv = BLOCKHEADHAIR
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE-100
	min_cold_protection_temperature = HELMET_MIN_COLD_PROTECTION_TEMPERATURE
	slowdown_general = 0
	disorientation = 0
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_TEN,
		bio = ARMOR_BIO_THIRTY-10,
		rad = ARMOR_RAD_THIRTY+5,
		bomb = ARMOR_BOMB_TEN+5
	)

/obj/item/clothing/head/helmet/pilgrimcap/hospitallerhelm
	name = "blessed head garments"
	desc = "The holy garments marking the wearer as a member of the Adeptus Sororitas"
	icon_state = "surgcap"
	item_state = "surgcap"
	flags_inv = BLOCKHEADHAIR
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE-100
	min_cold_protection_temperature = HELMET_MIN_COLD_PROTECTION_TEMPERATURE
	slowdown_general = 0
	disorientation = 0
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_TEN,
		bio = ARMOR_BIO_THIRTY-10,
		rad = ARMOR_RAD_THIRTY+5,
		bomb = ARMOR_BOMB_TEN+5
	)

/obj/item/clothing/head/helmet/pilgrimcap/chaossack
	name = "cultist sack"
	desc = "A hood made of cloth, made to chant the hymns of the dark gods."
	icon_state = "cult_chanter_item"
	item_state = "cult_chanter"
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE-100
	min_cold_protection_temperature = HELMET_MIN_COLD_PROTECTION_TEMPERATURE
	slowdown_general = 0
	disorientation = 0

/obj/item/clothing/head/helmet/pilgrimcap/roguetrader
	name = "rogue trader's cap"
	desc = "A fanciful hat fitting a wealthy Rogue Trader."
	icon_state = "fancyhat"
	item_state = "fancyhat"
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE-100
	min_cold_protection_temperature = HELMET_MIN_COLD_PROTECTION_TEMPERATURE
	slowdown_general = 0
	disorientation = 0
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_TEN,
		bio = ARMOR_BIO_THIRTY-10,
		rad = ARMOR_RAD_THIRTY+5,
		bomb = ARMOR_BOMB_TEN+5
	)

/obj/item/clothing/head/helmet/pilgrimcap/roguetrader/big
	name = "rogue trader's big hat"
	desc = "A fanciful hat fitting a wealthy Rogue Trader."
	icon_state = "bighat"
	item_state = "rtdriphat"

/obj/item/clothing/head/helmet/pilgrimcap/roguetrader/formal
	name = "parade hat"
	desc = "No one in a commanding position should be without a perfect, white hat of ultimate authority."
	icon_state = "officercap"
	item_state = "officercap"

/obj/item/clothing/head/helmet/pilgrimcap/roguetrader/alt
	name = "rogue trader's hat"
	desc = "The wonderfully fancy hat of a wealthy Rogue Trader."
	icon_state = "capcap"
	item_state = "capcap"

/obj/item/clothing/head/helmet/pilgrimcap/roguetrader/tricorn
	name = "fanciful tricorn"
	desc = " A fanciful, slightly armored, tricorn sold to the Rogue Trader by a back-alley xeno on Ithaka. Legend says it was worn by the Chapter Master of the Iron Snakes before he lost it in a battle with an ancient kraretyer, or perhaps that was just a sales pitch."
	icon_state = "tradertricorn"
	item_state = "tradertricorn"

/obj/item/clothing/head/helmet/pilgrimcap/roguetrader/seneschal
	name = "seneschal's cap"
	desc = "This hat is the mark of the right-hand of a Rogue Trader. He handles business while the Trader is otherwise occupied."
	icon_state = "chaperon"
	item_state = "chaperon"

/obj/item/clothing/head/helmet/pilgrimcap/roguetrader/prince
	name = "prince's helm"
	desc = "The Exquisite Helm of the Border Prince"
	icon_state = "prince"
	item_state = "prince"

// Inquisition Stuff
/obj/item/clothing/head/helmet/inquisition
	name = "carapace helm"
	desc = "A helmet crafted for the Inquisitorial Shock Troopers, this carapace helm is reinforced with advanced materials to protect against the brutal elements of war."
	icon_state = "cerberus"
	item_state = "cerberus"
	slowdown_general = 0.01
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+200
	max_pressure_protection = VOIDSUIT_MAX_PRESSURE
	disorientation = 0.75
	flags_inv = BLOCKHEADHAIR
	body_parts_covered = FACE|EYES|HEAD
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_TEN,
		bio = ARMOR_BIO_THIRTY+28,
		rad = ARMOR_RAD_THIRTY+35,
		bomb = ARMOR_BOMB_TEN+8
		)

/obj/item/clothing/head/helmet/inquisition/acolyte
	name = "carapace helm"
	desc = "Issued to fresh recruits of the Inquisitorial Retinue, this carapace helm provides solid protection in the field."
	icon_state = "inq_helm"
	item_state = "inq_helm"
	slowdown_general = 0.01
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+200
	disorientation = 0.5 // Same as cerberus.
	body_parts_covered = FACE|EYES|HEAD
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_TEN,
		bio = ARMOR_BIO_THIRTY+28,
		rad = ARMOR_RAD_THIRTY+35,
		bomb = ARMOR_BOMB_TEN+8
		)

/obj/item/clothing/head/helmet/inquisition/shrouded
	name = "shrouded carapace helm"
	desc = "A rare and advanced variant of the carapace helm, this version is worn by senior Inquisitorial agents."
	icon_state = "ihhelmet"
	item_state = "ihhelmet"
	slowdown_general = 0.012
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+300
	disorientation = 0.75
	flags_inv = HIDEEARS|BLOCKHEADHAIR
	body_parts_covered = FACE|EYES|HEAD
	armor = list(
		melee = ARMOR_MELEE_FLAK+1,
		bullet = ARMOR_BALLISTIC_FLAK+1,
		laser = ARMOR_LASER_FLAK+1,
		energy = ARMOR_ENERGY_TEN+5,
		bio = ARMOR_BIO_THIRTY+38,
		rad = ARMOR_RAD_THIRTY+45,
		bomb = ARMOR_BOMB_TEN+13
		)

/obj/item/clothing/head/helmet/inquisition/stealth
	name = "shrouded stealth helm"
	desc = "Forged in secrecy for the Vindicare Temple, this helmet focuses on advanced technologies of stealth and precision."
	icon_state = "stealth_rig_sealed"
	item_state = "stealth_rig_sealed"
	slowdown_general = 0.008 // Tech helmet
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+400
	disorientation = 0.75
	flags_inv = HIDEMASK|HIDEEARS|BLOCKHEADHAIR
	body_parts_covered = FACE|EYES|HEAD
	armor = list(
		melee = ARMOR_MELEE_FLAK+1,
		bullet = ARMOR_BALLISTIC_FLAK+1,
		laser = ARMOR_LASER_FLAK+1,
		energy = ARMOR_ENERGY_TEN+5,
		bio = ARMOR_BIO_THIRTY+38,
		rad = ARMOR_RAD_THIRTY+45,
		bomb = ARMOR_BOMB_TEN+13
		)

/obj/item/clothing/head/helmet/inquisition/ordos
	name = "ordos armoured hat"
	desc = "A traditional hat worn by ordos agents, marking their position as protectors of the Imperium from within."
	icon_state = "hereticushat"
	item_state = "hereticushat"
	slowdown_general = 0.012
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+300
	disorientation = 0.75
	body_parts_covered = HEAD|FACE|EYES
	slowdown_general = 0.065
	armor = list(
		melee = ARMOR_MELEE_CARAPACE,
		bullet = ARMOR_BALLISTIC_CARAPACE,
		laser = ARMOR_LASER_CARAPACE,
		energy = ARMOR_ENERGY_TEN+25,
		bio = ARMOR_BIO_THIRTY+40,
		rad = ARMOR_RAD_THIRTY+50,
		bomb = ARMOR_BOMB_THIRTY+5
	)

/obj/item/clothing/head/helmet/inquisition/ordos/hereticus
 	name = "ordos hereticus hat"
 	desc = "A traditional hat worn by agents of the Ordo Hereticus, marking their position as protectors of the Imperium from within."
 	icon_state = "brim-hat"
 	item_state = "brim-hat"

// SISTERS OF BATTLE

/obj/item/clothing/head/helmet/sisterofbattle
	name = "sacred rose power helmet"
	desc = "This beautifully crafted helmet, adorned with the symbols of the Order of the Sacred Rose, is imbued with the Emperor’s blessings."
	icon_state = "sister"
	item_state = "sister"
	slowdown_general = 0.008
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+1600
	max_pressure_protection = RIG_MAX_PRESSURE
	disorientation = 0.75
	flags_inv = HIDEMASK|HIDEEARS|BLOCKHEADHAIR
	body_parts_covered = FACE|EYES|HEAD
	armor = list(
		melee = ARMOR_MELEE_POWER_ARM-1,
		bullet = ARMOR_BALLISTIC_POWER_ARMOUR-1,
		laser = ARMOR_LASER_POWER_ARMOUR-1,
		energy = ARMOR_ENERGY_TEN+35,
		bio = ARMOR_BIO_THIRTY+84,
		rad = ARMOR_RAD_THIRTY+86,
		bomb = ARMOR_BOMB_THIRTY+10
	)

/obj/item/clothing/head/helmet/sisterofbattle/repentia
	name = "ornate carapace hood"
	desc = "The humble and bloodstained cowl worn by the penitent Sisters Repentia, marked by their penance and devotion."
	icon_state = "repentia_hood"
	item_state = "repentia_hood"

/obj/item/clothing/head/helmet/sisterofbattle/mlsister
	name = "martyred power helmet"
	desc = "Bearing the sigil of the Order of Our Martyred Lady, this power armor helmet radiates the Emperor’s light, offering protection as well as a visible symbol of the faith that powers the Sisters of Battle."
	icon_state = "mlsister"
	item_state = "mlsister"

/obj/item/clothing/head/helmet/sisterofbattle/brsister
	name = "bloody rose power helmet"
	desc = "The red and black hues of this power helmet signify its origin from the Order of the Bloody Rose."
	icon_state = "brsister"
	item_state = "brsister"
