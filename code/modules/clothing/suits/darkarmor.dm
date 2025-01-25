// ASSFARTES
// ASSFARTES

/obj/item/clothing/suit/armor/astartes
	name = "adeptus astartes scout carapace" // Note to self. Make astartes under uniform not allow utility slots. Alongside other heavily armored ones to avoid bodyglove stacking.
	desc = "The sturdy armour, issued to Adeptus Astartes Scouts for their service until they prove themselves worthy to become full-fledged Battlebrothers."
	icon_state = "fharmor"
	item_state = "fharmor"
	w_class = ITEM_SIZE_GARGANTUAN
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HANDS // Remember to make power gloves and booties.
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+600
	slowdown_general = 0.10
	armor = list(
		melee = ARMOR_MELEE_POWER_ARM-2,
		bullet = ARMOR_BALLISTIC_POWER_ARMOUR-1,
		laser = ARMOR_LASER_POWER_ARMOUR-2,
		energy = ARMOR_ENERGY_TEN+26,
		rad = ARMOR_RAD_THIRTY+25,
		bio = ARMOR_BIO_THIRTY+15,
		bomb = ARMOR_BOMB_THIRTY+5
		)
/*
/obj/item/clothing/suit/armor/astartes
	name = "Astartes Mark VII Power Armour"
	icon = 'icons/mob/32x40/suits.dmi'
	item_icons = list(slot_wear_suit_str = 'icons/mob/32x40/suits.dmi')
	icon_state = "umpowerarmor"
	item_state = "umpowerarmor"
	str_requirement = 24 // they can get gibbed and their armor stays. helmet has it, so why not armor too
	canremove = 1
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/lasgun/)
	armor = list(melee = 18, bullet = 48, laser = 48, energy = 44, bomb = 60, bio = 100, rad = 80)
	sales_price = 120
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HANDS
	cold_protection = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = SPACE_SUIT_MAX_HEAT_PROTECTION_TEMPERATURE
	flags_inv = HIDEJUMPSUIT|HIDEGLOVES
	species_restricted = list(SPECIES_ASTARTES)
	siemens_coefficient = 0
	permeability_coefficient = 0.05
	germ_level = 0 //sterile...

// SPESS MUUHREEN TACTICOOL



/obj/item/clothing/suit/armor/astartes/bloodangel
	name = "Astartes Mark VII Power Armour"
	desc = "The Holy armour of the sons of the Sanguinius, This one bears the symbol of his position, Tactical Marine of the IXth Chapter, Blood Angels."
	icon_state = "bangsuit"
	item_state = "bangsuit"

/obj/item/clothing/suit/armor/astartes/bloodangel/lamenter
	name = "Astartes Mark VII Power Armour"
	desc = "The Holy armour of the sons of the Sanguinius, This one bears the symbol of his position, Tactical Marine of the IXth Chapter, Blood Angel sucessor The Lamenters."
	icon_state = "lamenterc"
	item_state = "lamenterc"

/obj/item/clothing/suit/armor/astartes/ravenguard
	name = "Astartes Mark VII Power Armour"
	desc = "The Holy armour of the Emperor's chosen, This one bears the symbol of his position, Tactical Marine of the XIXth Chapter, Raven Guards."
	icon_state = "ravsuit"
	item_state = "ravsuit"

/obj/item/clothing/suit/armor/astartes/salamander
	name = "Astartes Mark VII Power Armour"
	desc = "The Holy armour of the Emperor's chosen, This one bears the symbol of his position, Tactical Marine of the XVIIIth Chapter, Salamanders."
	icon_state = "salsuit"
	item_state = "salsuit"
	max_heat_protection_temperature = FIRESUIT_MAX_HEAT_PROTECTION_TEMPERATURE

/obj/item/clothing/suit/armor/astartes/ultramarine
	name = "Astartes Mark VII Power Armour"
	desc = "The Holy armour of the Emperor's chosen, This one bears the symbol of his position, Tactical Marine of the XIIIth Chapter, Ultramarines."
	icon_state = "ultrasuit"
	item_state = "ultrasuit"

/obj/item/clothing/suit/armor/astartes/ultramarinenew
	name = "Astartes Mark VII Power Armour"
	desc = "The Holy armour of the Emperor's chosen, This one bears the symbol of his position, Tactical Marine of the XIIIth Chapter, Ultramarines."
	icon_state = "ultrac"
	item_state = "ultrac"

/obj/item/clothing/suit/armor/astartes/ultramarine/terminator
	name = "Indomitus Pattern Terminator Power Armor"
	desc = "The Holy armour of the Emperor's chosen, This one bears the symbol of his position, Tactical Marine of the XIIIth Chapter, Ultramarines."
	icon_state = "ultraterm"
	item_state = "ultraterm"

/obj/item/clothing/suit/armor/astartes/nightlord
	name = "Astartes Mark VII Power Armour"
	desc = "The Holy armour of the Emperor's chosen, This one bears the symbol of his position, Tactical Marine of the IIIrd Legion, Night Lords."
	icon_state = "nightlordc"
	item_state = "nightlordc"

/obj/item/clothing/suit/armor/astartes/alphalegion
	name = "Astartes Mark VII Power Armour"
	desc = "The Holy armour of the Emperor's chosen, This one bears the symbol of his position, Tactical Marine of the XXth Legion, Alpha Legion."
	icon_state = "alphalegc"
	item_state = "alphalegc"

/obj/item/clothing/suit/armor/astartes/worldbearer
	name = "Astartes Mark VII Power Armour"
	desc = "The Holy armour of the Emperor's chosen, This one bears the symbol of his position, Tactical Marine of the XXth Legion, World Bearers."
	icon_state = "worldbc"
	item_state = "worldbc"

/obj/item/clothing/suit/armor/astartes/plaguemarine
	name = "Astartes Mark VII Power Armour"
	desc = "The Holy armour of the Emperor's chosen, This one bears the symbol of his position, Tactical Marine of the XXth Legion, Plague Marines."
	icon_state = "plaguemc"
	item_state = "plaguemc"

// SPESS MUUHREEN SIRGENT

/obj/item/clothing/suit/armor/astartes/sergeant/ravenguard
	name = "Astartes Mark VII Power Armour"
	desc = "The Holy armour of the Emperor's chosen, This one is trimmed in golden lining and bears the symbol of his position, Sergeant of the XIXth Chapter, Raven Guards."
	icon_state = "ravcap"
	item_state = "ravcap"

/obj/item/clothing/suit/armor/astartes/sergeant/salamander
	name = "Astartes Mark VII Power Armour"
	desc = "The Holy armour of the Emperor's chosen, This one is trimmed in golden lining and bears the symbol of his position, Sergeant of the XVIIIth Chapter, Salamanders."
	icon_state = "salcap"
	item_state = "salcap"
	max_heat_protection_temperature = FIRESUIT_MAX_HEAT_PROTECTION_TEMPERATURE

/obj/item/clothing/suit/armor/astartes/ultramarine/sergeant
	name = "Astartes Mark VII Power Armour"
	desc = "The Holy armour of the Emperor's chosen, This one is trimmed in golden lining and bears the symbol of his position, Sergeant of the XIIIth Chapter, Ultramarines."
	icon_state = "ultracap"
	item_state = "ultracap"

// SPESS MUHREEN SPERM MAN

/obj/item/clothing/suit/armor/astartes/apothecary
	name = "NEEDED FOR SUIT TO WORK."
	desc = "IF YOU SEE THIS REPORT THIS TO DEVS"
	var/can_toggle = 1
	var/is_toggled = 1

/obj/item/clothing/suit/armor/astartes/apothecary/bloodangel
	name = "Astartes Mark VII Power Armour"
	desc = "The Holy armour of the Emperor's chosen, This one bears the symbol of his position, Sanguinary Priest of the IXth Chapter, Blood Angels. It has an integrated surgical suite."
	icon_state = "bangapoth"
	item_state = "bangapoth"

/obj/item/clothing/suit/armor/astartes/apothecary/ravenguard
	name = "Astartes Mark VII Power Armour"
	desc = "The Holy armour of the Emperor's chosen, This one bears the symbol of his position, Apothecary of the XIXth Chapter, Raven Guards. It has an integrated surgical suite."
	icon_state = "ravapoth"
	item_state = "ravapoth"

/obj/item/clothing/suit/armor/astartes/apothecary/salamander
	name = "Astartes Mark VII Power Armour"
	desc = "The Holy armour of the Emperor's chosen, This one bears the symbol of his position, Apothecary of the XVIIIth Chapter, Salamanders. It has an integrated surgical suite."
	icon_state = "salapoth"
	item_state = "salapoth"
	max_heat_protection_temperature = FIRESUIT_MAX_HEAT_PROTECTION_TEMPERATURE

/obj/item/clothing/suit/armor/astartes/apothecary/ultramarine
	name = "Astartes Mark VII Power Armour"
	desc = "The Holy armour of the Emperor's chosen, This one bears the symbol of his position, Apothecary of the XIIIth Chapter, Ultramarines. It has an integrated surgical suite."
	icon_state = "ultrapoth"
	item_state = "ultrapoth"

//SPESS MARINE SUIT
//Integrating the tools to their suit instead of the Narthecium. Since it is buggy, also does not have a proper sprite.

/obj/item/clothing/suit/armor/astartes/apothecary/verb/togglenarthecium()
	set name = "Activate Narthecium"
	set category = "Narthecium"
	set src in usr
	if(!usr.canmove || usr.stat || usr.restrained())
		return
	if(!can_toggle)
		to_chat(usr,"This tool cannot be toggled!")
		return
		src.is_toggled = 1
	else
		to_chat(usr,"You activate the chainsaw on your narthecium, getting ready to cut through armor and bone.")
		usr.put_in_hands(new /obj/item/melee/chain/pcsword/narthecium/apot(usr))
		src.is_toggled = 2

/obj/item/melee/chain/pcsword/narthecium/apot
	name = "Apothecary's Narthecium"
	desc = "The standard issued narthecium of the apothecaries, powered by a internal promethium generator. It requires to be toggled."
	icon = 'icons/obj/guardpower_gear_32xOBJ.dmi'
	icon_state = "hypogauntlet_on" // Does not spin. I have no clue why.
	item_state = "hypogauntlet_on"
	wielded_icon = "hypogauntlet_on"
	slot_flags = SLOT_BELT|SLOT_BACK|SLOT_S_STORE
	str_requirement = 20
	force = 47
	armor_penetration = 10
	block_chance = 45 //apothecary nartheciums can be used for blocking better, due to being essentially a extension of the apothecaries body and being insanely armored.
	sales_price = 0
	weapon_speed_delay = 9 //2 seconds
	edge = 1
	sharp = 1
	w_class = ITEM_SIZE_HUGE
	slot_flags = SLOT_BELT|SLOT_BACK|SLOT_S_STORE
	atom_flags = 0
	obj_flags = OBJ_FLAG_CONDUCTIBLE
	origin_tech = list(TECH_MAGNET = 6, TECH_COMBAT = 6)
	attack_verb = list("attacked", "chopped", "cleaved", "torn", "cut", "slashed", "sliced")
	hitsound = "sound/weapons/chainsword.ogg"
	grab_sound_is_loud = "TRUE"
	parry_sounds = list('sound/weapons/bladeparry1.ogg', 'sound/weapons/bladeparry2.ogg', 'sound/weapons/bladeparry3.ogg', 'sound/weapons/bladeparry4.ogg')
	drop_sound = 'sound/items/drop_sword.ogg'
	grab_sound = 'sound/items/unholster_sword02.ogg'
	equipsound = 'sound/items/holster_sword1.ogg'
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS|HEAD
	armor = list(melee = 1, bullet = 3, laser = 3, energy = 3, bomb = 3, bio = 0, rad = 0)

/obj/item/melee/chain/pcsword/narthecium/apot/dropped() //since nodrop is fucked this will deal with it for now.
	..()
	spawn(1) if(src) qdel(src)

/obj/item/clothing/suit/armor/astartes/apothecary/verb/toggledefib()
	set name = "Pull out Electro-Paddles"
	set category = "Narthecium"
	set src in usr
	if(!usr.canmove || usr.stat || usr.restrained())
		return
	if(!can_toggle)
		to_chat(usr,"This tool cannot be toggled!")
		return
		src.is_toggled = 1
	else
		to_chat(usr,"You pull out your electro paddles and get ready to shock!")
		usr.put_in_hands(new /obj/item/shockpaddles/narthecium(usr))
		src.is_toggled = 2

/obj/item/shockpaddles/narthecium
	name = "narthecium electro-paddles"
	desc = "A pair of advanced electro-paddles powered by a promethium generator, it's shocks are so strong that they could probably pierce a astartes ribcage without causing too much damage"
	chargecost = 0
	combat = 1
	safety = 0 //if you can zap people with the paddles on harm mode
	chargetime = (0 SECONDS)
	icon_state = "defibpaddles0"
	item_state = "defibpaddles0"
	cooldowntime = (4 SECONDS)

/obj/item/shockpaddles/narthecium/dropped() //since nodrop is fucked this will deal with it for now.
	..()
	spawn(1) if(src) qdel(src)


/obj/item/clothing/suit/armor/astartes/apothecary/verb/togglesaw()
	set name = "Pull out integrated saw"
	set category = "Narthecium"
	set src in usr
	if(!usr.canmove || usr.stat || usr.restrained())
		return
	if(!can_toggle)
		to_chat(usr,"This tool cannot be toggled!")
		return
		src.is_toggled = 1
	else
		to_chat(usr,"You grab a small perfurating device from your gloves.")
		usr.put_in_hands(new /obj/item/circular_saw/narthecium(usr))
		src.is_toggled = 2

/obj/item/circular_saw/narthecium
	name = "Intergrated bone saw"
	desc = "A small yet incredibly sharp saw made for heavy duty cutting."
/obj/item/circular_saw/narthecium/dropped() //since nodrop is fucked this will deal with it for now.
	..()
	spawn(1) if(src) qdel(src)

/obj/item/clothing/suit/armor/astartes/apothecary/verb/togglemusclefixer()
	set name = "Activate FixOvein"
	set category = "Narthecium"
	set src in usr
	if(!usr.canmove || usr.stat || usr.restrained())
		return
	if(!can_toggle)
		to_chat(usr,"This tool cannot be toggled!")
		return
		src.is_toggled = 1
	else
		to_chat(usr,"You call upon the machine spirit of the narthecium to give you it's integrated fixovein supply.")
		usr.put_in_hands(new /obj/item/FixOVein/narthecium(usr))
		src.is_toggled = 2


/obj/item/FixOVein/narthecium
	name = "Intergrated FixOVein"
	desc = "A small yet incredibly powerful regenerative device, able to regenerate small fragile tissue, however, its pretty slow at it, so most people still prefer the suture."
/obj/item/FixOVein/narthecium/dropped() //since nodrop is fucked this will deal with it for now.
	..()
	spawn(1) if(src) qdel(src)

/obj/item/clothing/suit/armor/astartes/apothecary/verb/togglebonefixer()
	set name = "Activate Bone Gel"
	set category = "Narthecium"
	set src in usr
	if(!usr.canmove || usr.stat || usr.restrained())
		return
	if(!can_toggle)
		to_chat(usr,"This tool cannot be toggled!")
		return
		src.is_toggled = 1
	else
		to_chat(usr,"You pressing the bonegel dispenser button on your narthecium, before noticing it doesn't work, instead, it opens a small hole with a bone gel thingy.")
		usr.put_in_hands(new /obj/item/bonegel/narthecium(usr))
		src.is_toggled = 2


/obj/item/bonegel/narthecium
	name = "Bone Gel Dispenser"
	desc = "A dispenser linked to a small tube in the gloves, you don't know how, but it seems to have infinite juice, also, the bone dispenser is duct taped to the tube."
/obj/item/bonegel/narthecium/dropped() //since nodrop is fucked this will deal with it for now.
	..()
	spawn(1) if(src) qdel(src)


/obj/item/clothing/suit/armor/astartes/apothecary/verb/togglebonesetter()
	set name = "Activate Bone Setter"
	set category = "Narthecium"
	set src in usr
	if(!usr.canmove || usr.stat || usr.restrained())
		return
	if(!can_toggle)
		to_chat(usr,"This tool cannot be toggled!")
		return
		src.is_toggled = 1
	else
		to_chat(usr,"You activate the integrated bone setting features of the narthecium, its painful and dizzying for a moment, but you feel more concentrated as a bone setter is seemingly materialized in your hands.")
		usr.put_in_hands(new /obj/item/bonesetter/narthecium(usr))
		src.is_toggled = 2


/obj/item/bonesetter/narthecium
	name = "Intergrated Bone Setter"
	desc = "A integrated bone setter with the stability and precision of a servo skull, works well for setting bones and stuff!"
/obj/item/bonesetter/narthecium/dropped() //since nodrop is fucked this will deal with it for now.
	..()
	spawn(1) if(src) qdel(src)

/obj/item/clothing/suit/armor/astartes/apothecary/verb/togglescalpelly()
	set name = "Activate Scalpel"
	set category = "Narthecium"
	set src in usr
	if(!usr.canmove || usr.stat || usr.restrained())
		return
	if(!can_toggle)
		to_chat(usr,"This tool cannot be toggled!")
		return
		src.is_toggled = 1
	else
		to_chat(usr,"You grab the duct taped scalpel on the narthecium.")
		usr.put_in_hands(new /obj/item/scalpel/narthecium(usr))
		src.is_toggled = 2

/obj/item/scalpel/narthecium
	name = "Duct Taped Scalpel"
	desc = "You aren't sure who, but someone ductaped a scalpel to these gloves, its worse for proper medicine than the IMS, although more accurate."
/obj/item/scalpel/narthecium/dropped() //since nodrop is fucked this will deal with it for now.
	..()
	spawn(1) if(src) qdel(src)


/obj/item/clothing/suit/armor/astartes/apothecary/verb/togglecauterey()
	set name = "Activate Cautery"
	set category = "Narthecium"
	set src in usr
	if(!usr.canmove || usr.stat || usr.restrained())
		return
	if(!can_toggle)
		to_chat(usr,"This tool cannot be toggled!")
		return
		src.is_toggled = 1
	else
		to_chat(usr,"You activate and pull out a servo cautery from the holy narthecium.")
		usr.put_in_hands(new /obj/item/cautery/narthecium(usr))
		src.is_toggled = 2

/obj/item/cautery/narthecium
	name = "Servo-Cautery"
	desc = "A red cautery which seems to be faster at closing wounds than normal cauteries, but maybe you just feel that way because its red?"
/obj/item/cautery/narthecium/dropped() //since nodrop is fucked this will deal with it for now.
	..()
	spawn(1) if(src) qdel(src)

/obj/item/clothing/suit/armor/astartes/apothecary/verb/togglebloodstopper()
	set name = "Activate Servo Hemostat"
	set category = "Narthecium"
	set src in usr
	if(!usr.canmove || usr.stat || usr.restrained())
		return
	if(!can_toggle)
		to_chat(usr,"This tool cannot be toggled!")
		return
		src.is_toggled = 1
	else
		to_chat(usr,"You pull out servo hemostats from your narthecium and prepare to activate them.")
		usr.put_in_hands(new /obj/item/hemostat/narthecium(usr))
		src.is_toggled = 2

/obj/item/hemostat/narthecium
	name = "Servo-Hemostat"
	desc = "Hm, this hemostat holds some bleeding closed just like a normal hemostat, But! it holds the bleeding FOR you! sparing some of your energy of your oh so delicate surgeon hands."
/obj/item/hemostat/narthecium/dropped() //since nodrop is fucked this will deal with it for now.
	..()
	spawn(1) if(src) qdel(src)


/obj/item/clothing/suit/armor/astartes/apothecary/verb/togglefleshpeeler()
	set name = "Activate Duct Tape Retractor"
	set category = "Narthecium"
	set src in usr
	if(!usr.canmove || usr.stat || usr.restrained())
		return
	if(!can_toggle)
		to_chat(usr,"This tool cannot be toggled!")
		return
		src.is_toggled = 1
	else
		to_chat(usr,"You SEIZE the retractor on your narthecium from it's duct tape restraints.")
		usr.put_in_hands(new /obj/item/retractor/narthecium(usr))
		src.is_toggled = 2

/obj/item/retractor/narthecium
	name = "Duct Taped Retractor"
	desc = "Again, why is this duct taped to such a wonderous piece of tech if the IMS already exists?"
/obj/item/retractor/narthecium/dropped() //since nodrop is fucked this will deal with it for now.
	..()
	spawn(1) if(src) qdel(src)

/obj/item/clothing/suit/armor/astartes/apothecary/verb/togglefleshdestroyer()
	set name = "Activate Blessed IMS"
	set category = "Narthecium"
	set src in usr
	if(!usr.canmove || usr.stat || usr.restrained())
		return
	if(!can_toggle)
		to_chat(usr,"This tool cannot be toggled!")
		return
		src.is_toggled = 1
	else
		to_chat(usr,"You activate the integrated incision management systems from your gloves, preparing them to start a incision.")
		usr.put_in_hands(new /obj/item/scalpel/manager/narthecium(usr))
		src.is_toggled = 2

/obj/item/scalpel/manager/narthecium
	name = "Integrated Incision Management System"
	desc = "A beatiful piece of tech made with the strongest holy oils of mars and some of the most holy incenses of the ecclesiarchy! Or so they have told you."
/obj/item/scalpel/manager/narthecium/dropped() //since nodrop is fucked this will deal with it for now.
	..()
	spawn(1) if(src) qdel(src)


// SPESS MUHREEN TOASTER FUCKER

/obj/item/clothing/suit/armor/astartes/techmarine/bloodangel
	name = "Astartes Mark VII Power Armour"
	desc = "The Holy armour of the Emperor's chosen, This one bears the symbol of his position, Techmarine of the IXth Chapter, Blood Angels."
	icon_state = "bangtech"
	item_state = "bangtech"

/obj/item/clothing/suit/armor/astartes/techmarine/ultramarine
	name = "Astartes Mark VII Power Armour"
	desc = "The Holy armour of the Emperor's chosen, This one bears the symbol of his position, Techmarine of the XIIIth Chapter, Ultramarines."
	icon_state = "ultratech"
	item_state = "ultratech"

/obj/item/clothing/suit/armor/astartes/techmarine/ravenguard
	name = "Astartes Mark VII Power Armour"
	desc = "The Holy armour of the Emperor's chosen, This one bears the symbol of his position, Techmarine of the XIXth Chapter, Raven Guards."
	icon_state = "ravtech"
	item_state = "ravtech"

/obj/item/clothing/suit/armor/astartes/techmarine/salamander
	name = "Astartes Mark VII Power Armour"
	desc = "The Holy armour of the Emperor's chosen, This one bears the symbol of his position, Techmarine of the XVIIIth Chapter, Salamanders."
	icon_state = "saltech"
	item_state = "saltech"
	max_heat_protection_temperature = FIRESUIT_MAX_HEAT_PROTECTION_TEMPERATURE

/obj/item/clothing/suit/armor/astartes/terminator //FINALLY HERE!
	name = "Indomitus Pattern Tactical Dreadnought Armour"
	icon = 'icons/mob/32x40/suits.dmi'
	item_icons = list(slot_wear_suit_str = 'icons/mob/32x40/suits.dmi')
	icon_state = "ultracap"
	item_state = "ultracap"
	str_requirement = 25
	canremove = 0
	var/shield_count = 0
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/lasgun/)
	armor = list(melee = 26, bullet = 55, laser = 55, energy = 30, bomb = 90, bio = 100, rad = 100)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HANDS
	cold_protection = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = SPACE_SUIT_MAX_HEAT_PROTECTION_TEMPERATURE
	flags_inv = HIDEJUMPSUIT|HIDEGLOVES
	species_restricted = list(SPECIES_ASTARTES)

/obj/item/clothing/suit/armor/astartes/terminator/shielded //Shielded version
	name = "Indomitus Pattern Tactical Dreadnought Armour"
	shield_count = 5

/obj/item/clothing/suit/armor/astartes/terminator/shielded/Initialize()
	. = ..()


/obj/item/clothing/suit/armor/astartes/terminator/shielded/handle_shield(mob/user, var/damage, atom/damage_source = null, mob/attacker = null, var/def_zone = null, var/attack_text = "the attack")
	if(istype(damage_source, /obj/item/projectile))
		if(shield_count > 0)
			var/obj/item/projectile/P = damage_source
			//var/reflectchance = 100 //Defined here, for if you want to make it have X percent chance of blocking the shot,
			var/datum/effect/effect/system/spark_spread/spark_system = new /datum/effect/effect/system/spark_spread()
			spark_system.set_up(5, 0, user.loc)
			spark_system.start()
			playsound(user.loc, "sparks", 50, 1)
			user.visible_message("<span class='danger'>[user]'s shields deflect [attack_text] in a shower of sparks!</span>")
			shield_count -= 1
			START_PROCESSING(SSobj, src)
			del(P)
		else
			user.visible_message("<span class='warning'>[user]'s shield overloads!</span>")
			user.update_inv_wear_suit()
			return 0
	return 0


/obj/item/clothing/suit/armor/astartes/terminator/shielded/Destroy()
	STOP_PROCESSING(SSobj, src)
	return ..()

/obj/item/clothing/suit/armor/astartes/terminator/shielded/Process()
	if(shield_count < 6) //Set this to whatever you want the max number of charges to be.
		sleep(60) //Timer in between recharge.
		shield_count += 1
		playsound(loc, 'sound/effects/compbeep1.ogg', 50, TRUE)
	if(shield_count  == 6) //Whatever the max charge is, this plays the sound.
		playsound(loc, 'sound/machines/ding.ogg', 50, TRUE)
		STOP_PROCESSING(SSobj, src)
		if(ishuman(loc))
			var/mob/living/carbon/human/C = loc
			C.update_inv_wear_suit()

/obj/item/clothing/suit/armor/astartes/terminator/verb/toggleclaw()
	set name = "Extend Lightning Claws"
	set category = "Weapons"
	set src in usr
	if(!usr.canmove || usr.stat || usr.restrained())
		return
	else
		to_chat(usr,"You extend your lightning claws.")
		usr.put_in_hands(new /obj/item/melee/energy/powersword/claw/integrated/terminator(usr))

/obj/item/clothing/suit/armor/astartes/terminator/verb/activatestormbolter()
	set name = "Activate Storm Bolter"
	set category = "Weapons"
	set src in usr
	if(!usr.canmove || usr.stat || usr.restrained())
		return
	else
		to_chat(usr,"You activate your integrated Storm Bolter.")
		usr.put_in_hands(new /obj/item/gun/energy/integrated/stormbolter(usr))

/obj/item/clothing/suit/armor/astartes/terminator/verb/togglefist()
	set name = "Activate Power Fist"
	set category = "Weapons"
	set src in usr
	if(!usr.canmove || usr.stat || usr.restrained())
		return
	else
		to_chat(usr,"You activate your power fist.")
		usr.put_in_hands(new /obj/item/melee/energy/powersword/fist/integrated/terminator(usr))

*/
// ORKS

/obj/item/clothing/suit/armor/orkarmor
	name = "'Eavy Metal Ork Armor"
	desc = "Scavenged 'eavy bitz to keep ya' krumpin' longa'!"
	w_class = ITEM_SIZE_GARGANTUAN
	icon_state = "ork_m_armor"
	item_state = "ork_m_armor" // Make sure orks ignore cold, heat, pressure and vacuum.
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HANDS
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+50
	species_restricted = list(SPECIES_ORK, SPECIES_ORK_NOB, SPECIES_ORK_BOSS, SPECIES_ORK_MEK)
	slowdown_general = 0.3 // Make sure to set ork speed to match this slowdown. So it only slows down non-orks wearing it.
	armor = list(
		melee = ARMOR_MELEE_FLAK+2,
		bullet = ARMOR_BALLISTIC_FLAK+1,
		laser = ARMOR_LASER_FLAK+1,
		energy = ARMOR_ENERGY_TEN+10,
		bio = ARMOR_BIO_THIRTY+20,
		rad = ARMOR_RAD_THIRTY+40,
		bomb = ARMOR_BOMB_TEN+30 // Orks get amazing resistances to rads and bombs from gestalt. Being bombed is just character building for orks.
	)

/obj/item/clothing/suit/armor/orkarmor/snazzy
	name = "Shoota Boyz Armor"
	desc = "Snazzy Armor of em ranged shoota boy types. Gud all rounda. Wat eva dat wurd means..."
	icon_state = "snazzya"
	item_state = "snazzya"
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK+2,
		laser = ARMOR_LASER_FLAK+2,
		energy = ARMOR_ENERGY_TEN+10,
		bio = ARMOR_BIO_THIRTY+20,
		rad = ARMOR_RAD_THIRTY+40,
		bomb = ARMOR_BOMB_TEN+30
	)

/obj/item/clothing/suit/armor/orkarmor/skullza
	name = "Orky Boy Skull Armor"
	desc = "Da armor of a real lova of humie skullz'. Dis Boy 'oves gettin' in klose kombat, it's defeenses help loads in da maylays!"
	icon_state = "ork_skullza"
	item_state = "ork_skullza"
	slowdown_general = 0.25
	armor = list(
		melee = ARMOR_MELEE_FLAK+2,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_TEN+10,
		bio = ARMOR_BIO_THIRTY+20,
		rad = ARMOR_RAD_THIRTY+40,
		bomb = ARMOR_BOMB_TEN+30
	)

/obj/item/clothing/suit/armor/orkarmor/zog
	name = "Zogging Ork Boy Armor"
	desc = "Da buttom of de barrel, dis one. Won't protek ya much. Betta dun nuffin, me guesses..."
	icon_state = "zoga"
	item_state = "zoga"
	body_parts_covered = LEGS|FULL_TORSO // sleevless ork
	slowdown_general = 0.2
	armor = list(
		melee = ARMOR_MELEE_FLAK+1,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_TEN+10,
		bio = ARMOR_BIO_THIRTY+10,
		rad = ARMOR_RAD_THIRTY+30,
		bomb = ARMOR_BOMB_TEN+20
	)

/obj/item/clothing/suit/armor/orkarmor/freeb
	name = "Freeboota Coat"
	desc = "Freeboota Coat of em ranged merc boy types. Gud all rounda. Wat eva dat wurd means..."
	icon_state = "freeboota"
	item_state = "freeboota"
	body_parts_covered = ARMS|LEGS|FULL_TORSO
	slowdown_general = 0.25
	armor = list(
		melee = ARMOR_MELEE_FLAK, // freeboota's are smart. more las prot, less melee.
		bullet = ARMOR_BALLISTIC_FLAK+1,
		laser = ARMOR_LASER_FLAK+1,
		energy = ARMOR_ENERGY_TEN+10,
		bio = ARMOR_BIO_THIRTY+10,
		rad = ARMOR_RAD_THIRTY+30,
		bomb = ARMOR_BOMB_TEN+20
	)

/obj/item/clothing/suit/armor/orkarmor/captain
	name = "Tha Kaptin's Coat"
	desc = "DA BOSS WEARS THIS!"
	icon_state = "freeboota"
	item_state = "freeboota"
	color = COLOR_DARK_GUNMETAL
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HANDS
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+50
	slowdown_general = 0.3
	armor = list(
		melee = ARMOR_MELEE_FLAK+2,
		bullet = ARMOR_BALLISTIC_FLAK+3,
		laser = ARMOR_LASER_FLAK+3,
		energy = ARMOR_ENERGY_TEN+20,
		bio = ARMOR_BIO_THIRTY+30,
		rad = ARMOR_RAD_THIRTY+50,
		bomb = ARMOR_BOMB_TEN+45 // Gestalt so strong they can only be killed in a fair duel.
	)

// Tau
/obj/item/clothing/suit/armor/tau
	name = "fire warrior battle suit"
	desc = "The impeccable yellow and brown armor of the Tau warrior caste"
	icon_state = "fw_armor"
	item_state = "fw_armor"
	w_class = ITEM_SIZE_GARGANTUAN
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HANDS
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+500
	slowdown_general = 0.11
	armor = list(
		melee = ARMOR_MELEE_POWER_ARM-2,
		bullet = ARMOR_BALLISTIC_POWER_ARMOUR-2,
		laser = ARMOR_LASER_POWER_ARMOUR-2,
		energy = ARMOR_ENERGY_TEN+20,
		rad = ARMOR_RAD_THIRTY+55,
		bio = ARMOR_BIO_THIRTY+35,
		bomb = ARMOR_BOMB_THIRTY+5
		)

/obj/item/clothing/suit/armor/tau/breacher
	name = "fire warrior breacher suit"
	desc = "The white and bright armor of a Tau Breacher."
	icon_state = "tbrea"
	item_state = "tbrea"
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HANDS
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+700
	slowdown_general = 0.12
	armor = list(
		melee = ARMOR_MELEE_POWER_ARM-1,
		bullet = ARMOR_BALLISTIC_POWER_ARMOUR-1,
		laser = ARMOR_LASER_POWER_ARMOUR-1,
		energy = ARMOR_ENERGY_TEN+30,
		rad = ARMOR_RAD_THIRTY+65,
		bio = ARMOR_BIO_THIRTY+45,
		bomb = ARMOR_BOMB_THIRTY+15
		)

/obj/item/clothing/suit/armor/tau/scout
	name = "fire warrior scout suit"
	desc = "The impeccable yellow and brown armor of the Tau warrior caste. This one is specially modified for use by recon elements of the Tau warriors."
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HANDS
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+500
	slowdown_general = 0.1
	armor = list(
		melee = ARMOR_MELEE_POWER_ARM-3,
		bullet = ARMOR_BALLISTIC_POWER_ARMOUR-3,
		laser = ARMOR_LASER_POWER_ARMOUR-2,
		energy = ARMOR_ENERGY_TEN+26,
		rad = ARMOR_RAD_THIRTY+55,
		bio = ARMOR_BIO_THIRTY+35,
		bomb = ARMOR_BOMB_THIRTY
		)

// Eldar
/obj/item/clothing/suit/armor/eldar
	name = "guardian armour"
	desc = "A ancient armor. It looks like it's made from Thermoplas in a scale like pattern."
	icon_state = "eldarmor"
	item_state = "eldarmor"
	w_class = ITEM_SIZE_GARGANTUAN
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HANDS
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	slowdown_general = 0.1 // Marshal's carapace is 0.11
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+500
	armor = list(
		melee = ARMOR_MELEE_CARAPACE+1,
		bullet = ARMOR_BALLISTIC_CARAPACE+2,
		laser = ARMOR_LASER_CARAPACE+2,
		energy = ARMOR_ENERGY_TEN+30,
		rad = ARMOR_RAD_THIRTY+65,
		bio = ARMOR_BIO_THIRTY+65,
		bomb = ARMOR_BOMB_THIRTY+5
		)

/obj/item/clothing/suit/armor/eldar/drukhari
	name = "dark plate armour"
	desc = "A ancient armor. It looks as if made from hardened resin in a thin-scale like pattern. It cackles with electrical power."
	icon_state = "deldarmor"
	item_state = "deldarmor"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HANDS
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	slowdown_general = 0.085
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+500
	armor = list(
		melee = ARMOR_MELEE_CARAPACE+1,
		bullet = ARMOR_BALLISTIC_CARAPACE+1,
		laser = ARMOR_LASER_CARAPACE+1,
		energy = ARMOR_ENERGY_TEN+30,
		rad = ARMOR_RAD_THIRTY+55,
		bio = ARMOR_BIO_THIRTY+55,
		bomb = ARMOR_BOMB_THIRTY+5
		)

/obj/item/clothing/suit/armor/eldar/corsair
	name = "corsair armour"
	desc = "The dark and shadowy armor of a voidscarred Corsair.."
	icon_state = "aeldar_armor"
	item_state = "aeldar_armor"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HANDS
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	slowdown_general = 0.08 // Faster. But weaker to rad/primitive weapons.
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+500
	armor = list(
		melee = ARMOR_MELEE_CARAPACE,
		bullet = ARMOR_BALLISTIC_CARAPACE+1,
		laser = ARMOR_LASER_CARAPACE+2,
		energy = ARMOR_ENERGY_TEN+30,
		rad = ARMOR_RAD_THIRTY+55,
		bio = ARMOR_BIO_THIRTY+55,
		bomb = ARMOR_BOMB_THIRTY+5
		)

/obj/item/clothing/suit/armor/eldar/ranger
	name = "ranger armour"
	desc = "An Eldar Ranger's Armour, comprised of many layers of cameoline materials with an underlying thermoplas player.."
	icon_state = "ranger"
	item_state = "ranger"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HANDS
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	slowdown_general = 0.1 // Marshal's carapace is 0.11
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+500
	armor = list(
		melee = ARMOR_MELEE_CARAPACE+1,
		bullet = ARMOR_BALLISTIC_CARAPACE+2,
		laser = ARMOR_LASER_CARAPACE+2,
		energy = ARMOR_ENERGY_TEN+30,
		rad = ARMOR_RAD_THIRTY+65,
		bio = ARMOR_BIO_THIRTY+65,
		bomb = ARMOR_BOMB_THIRTY+5
		)

/obj/item/clothing/suit/armor/eldar/ranger/verb/toggle_eldar_camo()
	set name = "Toggle Eldar Camo"
	set category = "Eldar"
	var/stealth_alpha = 15
	if(alpha == stealth_alpha)
		to_chat(usr,"You disable your armour's stealth features.")
		animate(src, alpha = 255, time = 1.5 SECONDS)
	else
		to_chat(usr,"You enable your armour's stealth features.")
		animate(src, alpha = stealth_alpha, time = 1.5 SECONDS)

/mob/living/carbon/human/proc/eldar_active_camo()
	set category = "Abilities"
	set name = "Active Camo"
	set desc = "Camouflage yourself"
	var/stealth_alpha = 15

	if(alpha == stealth_alpha)
		animate(src, alpha = 255, time = 1.5 SECONDS)
	else
		animate(src, alpha = stealth_alpha, time = 1.5 SECONDS)

/*

/obj/item/clothing/suit/storage/hooded/genestealer
	name = "tyranid chitin"
	desc = "The hide of a Tyranid Genestealer"
	armor = list(melee = 10, bullet = 30, laser = 30, energy = 20, bomb = 30, bio = 100, rad = 100)
	icon_state = "gsfeet"
	item_state = "gsfeet"
	canremove = 0
	unacidable = 1
	species_restricted = list(SPECIES_TYRANID) */
