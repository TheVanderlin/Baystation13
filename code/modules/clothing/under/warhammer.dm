
// ASTRA MILITARUM STUFF

/obj/item/clothing/under/rank/maccabian
	name = "Maccabian Battle Uniform"
	desc = "These durable undersuit are used to represent the zealous, smells like holy oils and other aromatics."
	icon_state = "maccabian"
	item_state = "maccabian"
	worn_state = "maccabian"
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | ARMS

/obj/item/clothing/under/rank/maccabian/medic
	desc = "These durable undersuit are used to represent the zealous, smells like holy oils and other aromatics. This one is the Medicae Variant"
	icon_state = "maccabianm"
	item_state = "maccabianm"
	worn_state = "maccabianm"

/obj/item/clothing/under/rank/maccabian/sergeant
	desc = "These durable undersuit are used to represent the zealous, smells like holy oils and other aromatics. This one is the Sergeant Variant"
	icon_state = "maccabians"
	item_state = "maccabians"
	worn_state = "maccabians"

/obj/item/clothing/under/rank/krieg_uniform
	name = "krieg Battle Uniform"
	desc = "These durable Battle Uniform are used to represent the resilent Krieg Regiment, Though it smells like shit."
	icon_state = "krieg"
	item_state = "krieg"
	worn_state = "krieg"
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | ARMS

/obj/item/clothing/under/cadian_uniform
	name = "guard uniform"
	desc = "The uniform of the common, but brave Cadian Regiment."
	icon_state = "guard"
	item_state = "guard"
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS

/obj/item/clothing/under/rank/valhallan_uniform
	name = "valhallan uniform"
	desc = "The uniform made out of their planetary predator's furs, durable and warm, made for the cold warriors of Valhalla Regiment."
	icon_state = "krieg"
	item_state = "krieg"
	worn_state = "krieg"
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | ARMS

/obj/item/clothing/under/rank/catachan
	name = "catachan shorts"
	desc = "Catachan fear no heat, no boltguns, no lasguns. They don't need shirts, They're Catachan Jungle Hunters."
	icon_state = "camopants"
	accessories = list(/obj/item/clothing/accessory/armor_plate/bodyglovecatachan)
	item_state = "camopants"
	worn_state = "camopants"
	cold_protection = LOWER_TORSO | LEGS

/obj/item/clothing/under/rank/krieg_uniform/commissar
	name = "commissar's Dress Uniform"
	desc = "More standard uniform of the Commissars of the Officio Prefectus, just with some Krieg emblems on them in an attempt to similate."
	icon_state = "kriegissar"
	item_state = "kriegissar"
	worn_state = "kriegissar"

// Astartes

/obj/item/clothing/under/astartes/bodysuit
	name = "Astartes Bodysuit"
	desc = "The bodysuit worn by Astartes underneath their Power Armour."
	icon_state = "swatunder"
	worn_state = "swatunder"
	siemens_coefficient = 0.9

// Adepta Sororitas

/obj/item/clothing/under/guard/uniform/sisterofbattle
	name = "Adepta Sororitas Bodysuit"
	desc = "The bodysuit worn by Adepta Sororitas underneath their Power Armour."
	siemens_coefficient = 0.9

/obj/item/clothing/under/guard/uniform/sisterofbattle/repentia
	name = "Faith of the Repentia"
	desc = "When there is no armor to defend from heretics, the Emperor protects."
	icon_state = "repentia_nude"
	worn_state = "repentia_nude"
	siemens_coefficient = 0.9

/obj/item/clothing/under/guard/uniform/sisterofbattle/zealot
	name = "Robes of the Faithful"
	desc = "When you're blessed there's no need for a helmet, the Emperor protects."
	icon_state = "zealot"
	worn_state = "zealot"
	siemens_coefficient = 0.9

/obj/item/clothing/under/voidofficer
	name = "officer's underlayers"
	desc = "voluminous underlayers belonging to a void officer."
	icon_state = "combat"
	item_state = "bl_suit"
	worn_state = "combat"

/obj/item/clothing/under/necron
	name = "Necrodermis Skin"
	desc = "A thin layer of Necrodermis making up the skin of a Necron."
	icon_state = "golem"
	worn_state = "golem"
	siemens_coefficient = 0.1
	cold_protection = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HANDS
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS|HANDS|FEET
	unacidable = 1
	canremove = 0


//pilgrim stuff
/obj/item/clothing/under/rank/penitent
	desc = "A simple jumpsuit, usually worn by poorest citizens of the Imperium of Man."
	name = "simple jumpsuit"
	icon_state = "jumpsuitdown"
	item_state = "jumpsuitdown"
	worn_state = "jumpsuitdown"

/obj/item/clothing/under/rank/kroot
	desc = "Tattered and torn from a life of battle and strife."
	name = "kroot robes"
	icon_state = "scoutoutfit"
	item_state = "scoutoutfit"
	worn_state = "scoutoutfit"
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS

/obj/item/clothing/under/rank/skitarii
	desc = "Heavily-augmented body, reinforced to fit the Mechanicus purposes."
	name = "skitarii body"
	icon_state = "skit"
	item_state = "skit"
	worn_state = "skit"
	canremove = 0
	unacidable = 1
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS

/obj/item/clothing/under/rank/ork // only using this one atm
	desc = "Tattered and torn from a life of battle and strife."
	name = "ork rags"
	icon_state = "ork_clothes"
	item_state = "ork_clothes"
	worn_state = "ork_clothes"

	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS

/obj/item/clothing/under/rank/ork/two
	icon_state = "orkpants"
	item_state = "orkpants"
	worn_state = "orkpants"

/obj/item/clothing/under/rank/ork/three
	icon_state = "squighide"
	item_state = "squighide"
	worn_state = "squighide"

/obj/item/clothing/under/rank/victorian
	name = "casual uniform"
	desc = "Casual..."
//	has_sensor = SUIT_NO_SENSORS
	icon_state = "vest"
	item_state = "vest"
	worn_state = "vest"
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS

/obj/item/clothing/under/rank/victorian/blred
	icon_state = "vestblred"
	item_state = "vestblred"
	worn_state = "vestblred"

/obj/item/clothing/under/rank/victorian/redbl
	icon_state = "vestredbl"
	item_state = "vestredbl"
	worn_state = "vestredbl"

/obj/item/clothing/under/rank/victorian/grey
	icon_state = "vestg"
	item_state = "vestg"
	worn_state = "vestg"

/obj/item/clothing/under/rank/victorian/black
	icon_state = "vestb"
	item_state = "vestb"
	worn_state = "vestb"

/obj/item/clothing/under/rank/victorian/blackdress
	icon_state = "blackdress"
	name = "fancy dress"
	desc = "Casual and fancy"
	item_state = "blackdress"
	worn_state = "blackdress"

/obj/item/clothing/under/rank/victorian/reddress
	icon_state = "reddress"
	name = "fancy dress"
	desc = "Casual and fancy"
	item_state = "reddress"
	worn_state = "reddress"

/obj/item/clothing/under/rank/chief_engineer
	desc = "It's a high visibility jumpsuit given to those engineers insane enough to achieve the rank of \"Magos\". It has minor radiation shielding."
	name = "Magos's jumpsuit"
	icon_state = "chiefengineer"
	item_state = "g_suit"
	worn_state = "chief"
	unacidable = 1
	armor = list(melee = 0, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 10) // need to code in tech priests underuniforms since they arent in 40k

/obj/item/clothing/under/rank/atmospheric_technician
	desc = "It's a jumpsuit worn by atmospheric technicians."
	name = "tech priest's jumpsuit"
	icon_state = "atmos"
	item_state = "atmos_suit"
	worn_state = "atmos"

/obj/item/clothing/under/rank/engineer
	desc = "It's an orange high visibility jumpsuit worn by mechanicus personnel. It has minor radiation shielding."
	name = "tech priest's jumpsuit"
	icon_state = "engine"
	item_state = "engi_suit"
	worn_state = "engine"
	armor = list(melee = 0, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 7)

/obj/item/clothing/under/ogryn/jumpsuit
	name = "Ogryn-Sized Fatigues"
	desc = "Sweaty, smelly and stained giant fatigues."
	icon = 'icons/mob/32x40/uniforms.dmi'
	item_icons = list(slot_w_uniform_str = 'icons/mob/32x40/uniforms.dmi')
	icon_state = "ogryn_full"
	worn_state = "ogryn_full"
	siemens_coefficient = 0.9


//Putting all the 40k stuff down below here.
/obj/item/clothing/under/inquisitor
	name = "inquisitor's suit"
	desc = "Heretics beware."
	icon_state = "uni-church"
	worn_state = "uni-church"
	item_state = "uni-church"

/obj/item/clothing/under/rt
	name = "trader's garb"
	desc = "Heretics beware."
	icon_state = "rtc"
	item_state = "rtc"
	worn_state = "rtc"

/obj/item/clothing/under/guard/uniform
	name = "trooper uniform"
	desc = "A standard-issue uniform for the Imperial Guard, made from slightly more durable materials than the civilian clothings."
	icon_state = "guard"
	item_state = "guard"
	worn_state = "guard"
	siemens_coefficient = 0.9

/obj/item/clothing/under/guard/renegadeuniform
	name = "renegade militia uniform"
	desc = "This standard Munitorum-issue uniform has had all imperial markings removed"
	icon_state = "rm_uniform"
	item_state = "rm_uniform"

/obj/item/clothing/under/guard/uniform/scion
	name = "Tempestus Scion Undersuit"
	desc = "A standardised armoured undersuit worn by Tempestus Scions"
	icon_state = "ScionUndersuit"
	item_state = "scionundersuit"
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | ARMS


/obj/item/clothing/under/grot
	name = "Small rags"
	desc = "What a fool"
	icon_state = "Grotrags"
	item_state = "Grotrags"

/obj/item/clothing/under/grot/grc
	name = "Expensive revolutionary suit"
	desc = "A true revolutionist"
	icon_state = "GRCrags"
	item_state = "GRCrags"
