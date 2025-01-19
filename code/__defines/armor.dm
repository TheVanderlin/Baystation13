// Armor will turn attacks into less dangerous (e.g. turning cut into bruise), so keep that in mind when decided what armor value to use.
// Some levels are marked with what they intend to block in such way.

#define  ARMOR_BALLISTIC_BASIC		23
#define  ARMOR_BALLISTIC_PRIMAL		25 // reduces manstopper rounds slightly.
#define  ARMOR_BALLISTIC_FLAK		28	// half dam on pistol rounds.
#define  ARMOR_BALLISTIC_CARAPACE	31 // half dam on autogun rounds.
#define  ARMOR_BALLISTIC_XENOS		33	// half dam on AP autogun.
#define  ARMOR_BALLISTIC_POWER_ARMOUR			35 // Nearly zero damage on standard autogun rounds.
#define  ARMOR_BALLISTIC_ASTARTES		39 // Almost entirely negates all standard AP or KP weapon damage from autoguns to 2-6 percent dam. With a bodyglove that is.

#define  ARMOR_LASER_BASIC			23
#define  ARMOR_LASER_PRIMAL			25	//Blocks undercharged las shots.
#define  ARMOR_LASER_FLAK		28	//Blocks laspistols.
#define  ARMOR_LASER_CARAPACE			31 // Your lasguns unless very powerful such as Hotshot/Longlas should never reach this level of AP.
#define  ARMOR_LASER_POWER_ARMOUR			35	// Near zero damage from standard lasbeams.
#define  ARMOR_LASER_ASTARTES			39 // Completely immune to mid-power lasbeams.

#define  ARMOR_MELEE_BASIC			7 // Pen code deals percentile damage so long as AP is within 20 points of the armor rating. Though if it's 18 points below the damage is 10 percent.
#define  ARMOR_MELEE_PRIMAL			9 // Heavy clothing
#define  ARMOR_MELEE_FLAK			10 // Flak armor. Machetes. Knives.
#define  ARMOR_MELEE_CARAPACE		12 // Medieval armor. Swords.
#define  ARMOR_MELEE_POWER_ARM			14 // Power Armor.
#define  ARMOR_MELEE_ASTARTES		15 // Astartes Power armor.

#define  ARMOR_BIO_THIRTY			15
#define  ARMOR_BIO_SMALL			35
#define  ARMOR_BIO_FIFTY		50
#define  ARMOR_BIO_STRONG			75
#define  ARMOR_BIO_SHIELDED			99

#define  ARMOR_RAD_THIRTY			30
#define  ARMOR_RAD_SMALL			45
#define  ARMOR_RAD_FIFTY		50
#define  ARMOR_RAD_SHIELDED			99

#define  ARMOR_BOMB_TEN			10
#define  ARMOR_BOMB_THIRTY			30
#define  ARMOR_BOMB_RESISTANT		55
#define  ARMOR_BOMB_SHIELDED		70

#define  ARMOR_ENERGY_TEN			10
#define  ARMOR_ENERGY_SMALL			25
#define  ARMOR_ENERGY_RESISTANT		40
#define  ARMOR_ENERGY_STRONG		55
#define  ARMOR_ENERGY_SHIELDED		65
