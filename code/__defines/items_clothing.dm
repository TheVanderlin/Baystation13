#define HUMAN_STRIP_DELAY (4 SECONDS)

#define CANDLE_LUM 3 // For how bright candles are.

// Item inventory slot bitmasks.
#define SLOT_OCLOTHING  FLAG(0)
#define SLOT_ICLOTHING  FLAG(1)
#define SLOT_GLOVES     FLAG(2)
#define SLOT_EYES       FLAG(3)
#define SLOT_EARS       FLAG(4)
#define SLOT_MASK       FLAG(5)
#define SLOT_HEAD       FLAG(6)
#define SLOT_FEET       FLAG(7)
#define SLOT_ID         FLAG(8)
#define SLOT_BELT       FLAG(9)
#define SLOT_BACK       FLAG(10)
#define SLOT_POCKET     FLAG(11)  // This is to allow items with a w_class of 3 or 4 to fit in pockets.
#define SLOT_DENYPOCKET FLAG(12)  // This is to  deny items with a w_class of 2 or 1 from fitting in pockets.
#define SLOT_TWOEARS    FLAG(13)
#define SLOT_TIE        FLAG(14)
#define SLOT_HOLSTER	FLAG(15)

#define ACCESSORY_SLOT_UTILITY "CU"
#define ACCESSORY_SLOT_HOLSTER "CH"
#define ACCESSORY_SLOT_ARMBAND "CA"
#define ACCESSORY_SLOT_RANK "CR"
#define ACCESSORY_SLOT_FLASH "CF"
#define ACCESSORY_SLOT_DECOR "CD"
#define ACCESSORY_SLOT_MEDAL "CM"
#define ACCESSORY_SLOT_INSIGNIA "CI"
#define ACCESSORY_SLOT_INSIGNIA_EVA "CE"
#define ACCESSORY_SLOT_ARMOR_CHEST "AC"
#define ACCESSORY_SLOT_ARMOR_ARMS "AA"
#define ACCESSORY_SLOT_ARMOR_LEGS "AL"
#define ACCESSORY_SLOT_ARMOR_STORAGE "AS"
#define ACCESSORY_SLOT_ARMOR_MISC "AM"
#define ACCESSORY_SLOT_HELMET_COVER "HC"
#define ACCESSORY_SLOT_HELMET_DECOR "HD"
#define ACCESSORY_SLOT_HELMET_VISOR "HV"
#define ACCESSORY_SLOT_GLASSES_VISION "GV"
#define ACCESSORY_SLOT_GLASSES_HUD "GH"

#define ACCESSORY_REMOVABLE FLAG(0)
#define ACCESSORY_HIDDEN FLAG(1)
#define ACCESSORY_HIGH_VISIBILITY FLAG(2)
#define ACCESSORY_DEFAULT_FLAGS ( ACCESSORY_REMOVABLE )


// Bitmasks for the flags_inv variable. These determine when a piece of clothing hides another, i.e. a helmet hiding glasses.
// WARNING: The following flags apply only to the external suit!
#define HIDEGLOVES      FLAG(0)
#define HIDESUITSTORAGE FLAG(1)
#define HIDEJUMPSUIT    FLAG(2)
#define HIDESHOES       FLAG(3)
#define HIDETAIL        FLAG(4)

// WARNING: The following flags apply only to the helmets and masks!
#define HIDEMASK FLAG(0)
#define HIDEEARS FLAG(1) // Headsets and such.
#define HIDEEYES FLAG(2) // Glasses.
#define HIDEFACE FLAG(3) // Dictates whether we appear as "Unknown".
#define CLOTHING_BULKY FLAG(11) //You cannot wear bulky clothing over bulky clothing.

#define BLOCKHEADHAIR   FLAG(5)    // Hides the user's hair overlay. Leaves facial hair.
#define BLOCKHAIR       FLAG(6)    // Hides the user's hair, facial and otherwise.

// Slots.
#define slot_first       1
#define slot_back        1
#define slot_wear_mask   2
#define slot_handcuffed  3
#define slot_l_hand      4
#define slot_r_hand      5
#define slot_belt        6
#define slot_wear_id     7
#define slot_l_ear       8
#define slot_glasses     9
#define slot_gloves      10
#define slot_head        11
#define slot_shoes       12
#define slot_wear_suit   13
#define slot_w_uniform   14
#define slot_l_store     15
#define slot_r_store     16
#define slot_s_store     17
#define slot_in_backpack 18
#define slot_legcuffed   19
#define slot_r_ear       20
#define slot_legs        21
#define slot_tie         22
#define slot_last        22

// Inventory slot strings.
// since numbers cannot be used as associative list keys.
//icon_back, icon_l_hand, etc would be much better names for these...
#define slot_back_str		"slot_back"
#define slot_l_hand_str		"slot_l_hand"
#define slot_r_hand_str		"slot_r_hand"
#define slot_w_uniform_str	"slot_w_uniform"
#define slot_head_str		"slot_head"
#define slot_wear_suit_str	"slot_suit"
#define slot_l_ear_str      "slot_l_ear"
#define slot_r_ear_str      "slot_r_ear"
#define slot_belt_str       "slot_belt"
#define slot_shoes_str      "slot_shoes"
#define slot_wear_mask_str 	"slot_wear_mask"
#define slot_handcuffed_str "slot_handcuffed"
#define slot_legcuffed_str "slot_legcuffed"
#define slot_wear_id_str  	"slot_wear_id"
#define slot_gloves_str  	"slot_gloves"
#define slot_glasses_str  	"slot_glasses"
#define slot_s_store_str	"slot_s_store"
#define slot_tie_str		"slot_tie"

// Bitflags for clothing parts.
#define HEAD        FLAG(0)
#define FACE        FLAG(1)
#define EYES        FLAG(2)
#define FULL_HEAD   (HEAD | FACE | EYES)
#define UPPER_TORSO FLAG(3)
#define LOWER_TORSO FLAG(4)
#define FULL_TORSO  (UPPER_TORSO | LOWER_TORSO)
#define LEG_LEFT    FLAG(5)
#define LEG_RIGHT   FLAG(6)
#define LEGS        (LEG_LEFT | LEG_RIGHT)
#define FOOT_LEFT   FLAG(7)
#define FOOT_RIGHT  FLAG(8)
#define FEET        (FOOT_LEFT | FOOT_RIGHT)
#define FULL_LEGS   (LEG_LEFT | LEG_RIGHT | FOOT_LEFT | FOOT_RIGHT)
#define ARM_LEFT    FLAG(9)
#define ARM_RIGHT   FLAG(10)
#define ARMS        (ARM_LEFT | ARM_RIGHT)
#define HAND_LEFT   FLAG(11)
#define HAND_RIGHT  FLAG(12)
#define HANDS       (HAND_LEFT | HAND_RIGHT)
#define FULL_ARMS   (ARM_LEFT | ARM_RIGHT | HAND_LEFT | HAND_RIGHT)
#define FULL_BODY   (FULL_HEAD | FULL_TORSO | FULL_LEGS | FULL_ARMS)

// Bitflags for the percentual amount of protection a piece of clothing which covers the body part offers.
// Used with human/proc/get_heat_protection() and human/proc/get_cold_protection().
// The values here should add up to 1, e.g., the head has 30% protection.
#define THERMAL_PROTECTION_HEAD        0.3
#define THERMAL_PROTECTION_UPPER_TORSO 0.15
#define THERMAL_PROTECTION_LOWER_TORSO 0.15
#define THERMAL_PROTECTION_LEG_LEFT    0.075
#define THERMAL_PROTECTION_LEG_RIGHT   0.075
#define THERMAL_PROTECTION_FOOT_LEFT   0.025
#define THERMAL_PROTECTION_FOOT_RIGHT  0.025
#define THERMAL_PROTECTION_ARM_LEFT    0.075
#define THERMAL_PROTECTION_ARM_RIGHT   0.075
#define THERMAL_PROTECTION_HAND_LEFT   0.025
#define THERMAL_PROTECTION_HAND_RIGHT  0.025

// Pressure limits.
#define  HAZARD_HIGH_PRESSURE 550 // This determines at what pressure the ultra-high pressure red icon is displayed. (This one is set as a constant)
#define WARNING_HIGH_PRESSURE 325 // This determines when the orange pressure icon is displayed (it is 0.7 * HAZARD_HIGH_PRESSURE)
#define WARNING_LOW_PRESSURE  50  // This is when the gray low pressure icon is displayed. (it is 2.5 * HAZARD_LOW_PRESSURE)
#define  HAZARD_LOW_PRESSURE  20  // This is when the black ultra-low pressure icon is displayed. (This one is set as a constant)

#define TEMPERATURE_DAMAGE_COEFFICIENT  1.5 // This is used in handle_temperature_damage() for humans, and in reagents that affect body temperature. Temperature damage is multiplied by this amount.
#define BODYTEMP_AUTORECOVERY_DIVISOR   12  // This is the divisor which handles how much of the temperature difference between the current body temperature and 310.15K (optimal temperature) humans auto-regenerate each tick. The higher the number, the slower the recovery. This is applied each tick, so long as the mob is alive.
#define BODYTEMP_AUTORECOVERY_MINIMUM   1   // Minimum amount of kelvin moved toward 310.15K per tick. So long as abs(310.15 - bodytemp) is more than 50.
#define BODYTEMP_COLD_DIVISOR           6   // Similar to the BODYTEMP_AUTORECOVERY_DIVISOR, but this is the divisor which is applied at the stage that follows autorecovery. This is the divisor which comes into play when the human's loc temperature is lower than their body temperature. Make it lower to lose bodytemp faster.
#define BODYTEMP_HEAT_DIVISOR           6   // Similar to the BODYTEMP_AUTORECOVERY_DIVISOR, but this is the divisor which is applied at the stage that follows autorecovery. This is the divisor which comes into play when the human's loc temperature is higher than their body temperature. Make it lower to gain bodytemp faster.
#define BODYTEMP_COOLING_MAX           -30  // The maximum number of degrees that your body can cool down in 1 tick, when in a cold area.
#define BODYTEMP_HEATING_MAX            30  // The maximum number of degrees that your body can heat up in 1 tick,   when in a hot  area.

#define BODYTEMP_HEAT_DAMAGE_LIMIT 360.15 // The limit the human body can take before it starts taking damage from heat.
#define BODYTEMP_COLD_DAMAGE_LIMIT 260.15 // The limit the human body can take before it starts taking damage from coldness.

#define SPACE_HELMET_MIN_COLD_PROTECTION_TEMPERATURE 2.0 // What min_cold_protection_temperature is set to for space-helmet quality headwear. MUST NOT BE 0.
#define   SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE 2.0 // What min_cold_protection_temperature is set to for space-suit quality jumpsuits or suits. MUST NOT BE 0.
#define       HELMET_MIN_COLD_PROTECTION_TEMPERATURE 2.0 // For normal helmets.
#define        ARMOR_MIN_COLD_PROTECTION_TEMPERATURE 2.0 // For armor.
#define       GLOVES_MIN_COLD_PROTECTION_TEMPERATURE 2.0 // For some gloves.
#define         SHOE_MIN_COLD_PROTECTION_TEMPERATURE 2.0 // For shoes.

#define  SPACE_SUIT_MAX_HEAT_PROTECTION_TEMPERATURE 3000  // These need better heat protect, but not as good heat protect as firesuits.
#define    FIRESUIT_MAX_HEAT_PROTECTION_TEMPERATURE 3000 // What max_heat_protection_temperature is set to for firesuit quality headwear. MUST NOT BE 0.
#define FIRE_HELMET_MAX_HEAT_PROTECTION_TEMPERATURE 3000 // For fire-helmet quality items. (Red and white hardhats)
#define      HELMET_MAX_HEAT_PROTECTION_TEMPERATURE 600   // For normal helmets.
#define       ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE 600   // For armor.
#define      GLOVES_MAX_HEAT_PROTECTION_TEMPERATURE 1500  // For some gloves.
#define        SHOE_MAX_HEAT_PROTECTION_TEMPERATURE 1500  // For shoes.

#define  FIRESUIT_MAX_PRESSURE 		50 * ONE_ATMOSPHERE   // Firesuis and atmos voidsuits
#define  RIG_MAX_PRESSURE 			80 * ONE_ATMOSPHERE   // Rigs
#define  LIGHT_RIG_MAX_PRESSURE 	55 * ONE_ATMOSPHERE   // Rigs
#define  ENG_VOIDSUIT_MAX_PRESSURE 	60 * ONE_ATMOSPHERE
#define  VOIDSUIT_MAX_PRESSURE 		45 * ONE_ATMOSPHERE
#define  SPACE_SUIT_MAX_PRESSURE 	15 * ONE_ATMOSPHERE

// Fire.
#define FIRE_MIN_STACKS          -20
#define FIRE_MAX_STACKS           25
#define FIRE_MAX_FIRESUIT_STACKS  24 // If the number of stacks goes above this firesuits won't protect you anymore. If not, you can walk around while on fire like a badass.

#define THROWFORCE_SPEED_DIVISOR    5  // The throwing speed value at which the throwforce multiplier is exactly 1.
#define THROWNOBJ_KNOCKBACK_SPEED   15 // The minumum speed of a w_class 2 thrown object that will cause living mobs it hits to be knocked back. Heavier objects can cause knockback at lower speeds.
#define THROWNOBJ_KNOCKBACK_DIVISOR 2  // Affects how much speed the mob is knocked back with.

// Suit sensor levels
#define SUIT_SENSOR_OFF      0
#define SUIT_SENSOR_BINARY   1
#define SUIT_SENSOR_VITAL    2
#define SUIT_SENSOR_TRACKING 3

#define SUIT_SENSOR_MODES list("Off" = SUIT_SENSOR_OFF, "Binary sensors" = SUIT_SENSOR_BINARY, "Vitals tracker" = SUIT_SENSOR_VITAL, "Tracking beacon" = SUIT_SENSOR_TRACKING)

#define SUIT_NO_SENSORS EMPTY_BITFIELD
#define SUIT_HAS_SENSORS FLAG(0)
#define SUIT_LOCKED_SENSORS FLAG(1)

// Hair Flags
#define VERY_SHORT FLAG(0)
#define HAIR_TIEABLE FLAG(1)
#define HAIR_BALD FLAG(2)

//flags to determine if an eyepiece is a hud.
#define HUD_SCIENCE FLAG(0)
#define HUD_SECURITY FLAG(1)
#define HUD_MEDICAL FLAG(2)
#define HUD_JANITOR FLAG(3)


/**
* flags for /mob/proc/equip_to_slot_if_possible
*/

/// Cause a mob icon update after equipping
#define TRYEQUIP_REDRAW 0x1

/// Skip any delays and equip instantly
#define TRYEQUIP_INSTANT 0x2

/// If the attempt fails, destroy the item
#define TRYEQUIP_DESTROY 0x4

/// Do not send output to the user about success or failure
#define TRYEQUIP_SILENT 0x8

/// Always succeed if existentially possible
#define TRYEQUIP_FORCE 0x10


// Storage
/*
	A note on w_classes - this is an attempt to describe the w_classes currently in use
	with an attempt at providing examples of the kinds of things that fit each w_class

	1 - tiny items - things like screwdrivers and pens, sheets of paper
	2 - small items - things that can fit in a pocket
	3 - normal items
	4 - large items - the largest things you can fit in a backpack
	5 - bulky items - backpacks are this size, for reference
	6 - human sized objects
	7 - things that are large enough to contain humans, like closets, but smaller than entire turfs
	8 - things that take up an entire turf, like wall girders or door assemblies
*/

GLOBAL_LIST_INIT(default_onmob_icons, list(
	slot_l_hand_str = 'icons/mob/onmob/items/lefthand.dmi',\
	slot_r_hand_str = 'icons/mob/onmob/items/righthand.dmi',\
	slot_belt_str = 'icons/mob/onmob/onmob_belt.dmi',\
	slot_back_str = 'icons/mob/onmob/onmob_back.dmi',\
	slot_l_ear_str = 'icons/mob/onmob/onmob_ears.dmi',\
	slot_r_ear_str = 'icons/mob/onmob/onmob_ears.dmi',\
	slot_glasses_str = 'icons/mob/onmob/onmob_eyes.dmi',\
	slot_wear_id_str = 'icons/mob/onmob/onmob_id.dmi',\
	slot_w_uniform_str = 'icons/mob/onmob/onmob_under.dmi',\
	slot_wear_suit_str = 'icons/mob/onmob/onmob_suit.dmi',\
	slot_head_str = 'icons/mob/onmob/onmob_head.dmi',\
	slot_shoes_str = 'icons/mob/onmob/onmob_feet.dmi',\
	slot_wear_mask_str = 'icons/mob/onmob/onmob_mask.dmi',\
	slot_handcuffed_str = 'icons/mob/onmob/onmob_cuff.dmi',\
	slot_legcuffed_str = 'icons/mob/onmob/onmob_cuff.dmi',\
	slot_gloves_str = 'icons/mob/onmob/onmob_hands.dmi',\
	slot_s_store_str = 'icons/mob/onmob/onmob_belt_mirror.dmi',\
	slot_tie_str = 'icons/mob/onmob/onmob_accessories.dmi'\
))
