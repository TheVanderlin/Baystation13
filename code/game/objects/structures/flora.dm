//trees
/obj/structure/flora/tree
	name = "tree"
	anchored = TRUE
	density = TRUE
	pixel_x = -16
	layer = ABOVE_HUMAN_LAYER

/obj/structure/flora/tree/pine
	name = "pine tree"
	icon = 'icons/obj/flora/pinetrees.dmi'
	icon_state = "pine_1"

/obj/structure/flora/tree/pine/New()
	..()
	icon_state = "pine_[rand(1, 3)]"

/obj/structure/flora/tree/pine/xmas
	name = "\improper Christmas tree"
	desc = "O Christmas tree, O Christmas tree..."
	icon = 'icons/obj/flora/pinetrees.dmi'
	icon_state = "pine_c"

/obj/structure/flora/tree/pine/xmas/New()
	..()
	icon_state = "pine_c"

/obj/structure/flora/tree/dead
	icon = 'icons/obj/flora/deadtrees.dmi'
	icon_state = "tree_1"

/obj/structure/flora/tree/dead/New()
	..()
	icon_state = "tree_[rand(1, 6)]"

//grass
/obj/structure/flora/grass
	name = "grass"
	icon = 'icons/obj/flora/snowflora.dmi'
	anchored = TRUE

/obj/structure/flora/grass/brown
	icon_state = "snowgrass1bb"

/obj/structure/flora/grass/brown/New()
	..()
	icon_state = "snowgrass[rand(1, 3)]bb"

/obj/structure/flora/grass/green
	icon_state = "snowgrass1gb"

/obj/structure/flora/grass/green/New()
	..()
	icon_state = "snowgrass[rand(1, 3)]gb"

/obj/structure/flora/grass/both
	icon_state = "snowgrassall1"

/obj/structure/flora/grass/both/New()
	..()
	icon_state = "snowgrassall[rand(1, 3)]"

//bushes
/obj/structure/flora/bush
	name = "bush"
	icon = 'icons/obj/flora/snowflora.dmi'
	icon_state = "snowbush1"
	anchored = TRUE

/obj/structure/flora/bush/New()
	..()
	icon_state = "snowbush[rand(1, 6)]"

/obj/structure/flora/pottedplant
	name = "potted plant"
	icon = 'icons/obj/flora/plants.dmi'
	icon_state = "plant-26"
	layer = ABOVE_HUMAN_LAYER

//newbushes
/obj/structure/flora/ausbushes
	name = "bush"
	icon = 'icons/obj/flora/ausflora.dmi'
	icon_state = "firstbush_1"
	anchored = TRUE
	layer = PLANT_LAYER

/obj/structure/flora/ausbushes/New()
	..()
	icon_state = "firstbush_[rand(1, 4)]"

/obj/structure/flora/ausbushes/reedbush
	icon_state = "reedbush_1"

/obj/structure/flora/ausbushes/reedbush/New()
	..()
	icon_state = "reedbush_[rand(1, 4)]"

/obj/structure/flora/ausbushes/leafybush
	icon_state = "leafybush_1"

/obj/structure/flora/ausbushes/leafybush/New()
	..()
	icon_state = "leafybush_[rand(1, 3)]"

/obj/structure/flora/ausbushes/palebush
	icon_state = "palebush_1"

/obj/structure/flora/ausbushes/palebush/New()
	..()
	icon_state = "palebush_[rand(1, 4)]"

/obj/structure/flora/ausbushes/stalkybush
	icon_state = "stalkybush_1"

/obj/structure/flora/ausbushes/stalkybush/New()
	..()
	icon_state = "stalkybush_[rand(1, 3)]"

/obj/structure/flora/ausbushes/grassybush
	icon_state = "grassybush_1"

/obj/structure/flora/ausbushes/grassybush/New()
	..()
	icon_state = "grassybush_[rand(1, 4)]"

/obj/structure/flora/ausbushes/fernybush
	icon_state = "fernybush_1"

/obj/structure/flora/ausbushes/fernybush/New()
	..()
	icon_state = "fernybush_[rand(1, 3)]"

/obj/structure/flora/ausbushes/sunnybush
	icon_state = "sunnybush_1"

/obj/structure/flora/ausbushes/sunnybush/New()
	..()
	icon_state = "sunnybush_[rand(1, 3)]"

/obj/structure/flora/ausbushes/genericbush
	icon_state = "genericbush_1"

/obj/structure/flora/ausbushes/genericbush/New()
	..()
	icon_state = "genericbush_[rand(1, 4)]"

/obj/structure/flora/ausbushes/pointybush
	icon_state = "pointybush_1"

/obj/structure/flora/ausbushes/pointybush/New()
	..()
	icon_state = "pointybush_[rand(1, 4)]"

/obj/structure/flora/ausbushes/lavendergrass
	icon_state = "lavendergrass_1"

/obj/structure/flora/ausbushes/lavendergrass/New()
	..()
	icon_state = "lavendergrass_[rand(1, 4)]"

/obj/structure/flora/ausbushes/ywflowers
	icon_state = "ywflowers_1"

/obj/structure/flora/ausbushes/ywflowers/New()
	..()
	icon_state = "ywflowers_[rand(1, 3)]"

/obj/structure/flora/ausbushes/brflowers
	icon_state = "brflowers_1"

/obj/structure/flora/ausbushes/brflowers/New()
	..()
	icon_state = "brflowers_[rand(1, 3)]"

/obj/structure/flora/ausbushes/ppflowers
	icon_state = "ppflowers_1"

/obj/structure/flora/ausbushes/ppflowers/New()
	..()
	icon_state = "ppflowers_[rand(1, 3)]"

/obj/structure/flora/ausbushes/sparsegrass
	icon_state = "sparsegrass_1"

/obj/structure/flora/ausbushes/sparsegrass/New()
	..()
	icon_state = "sparsegrass_[rand(1, 3)]"

/obj/structure/flora/ausbushes/fullgrass
	icon_state = "fullgrass_1"

/obj/structure/flora/ausbushes/fullgrass/New()
	..()
	icon_state = "fullgrass_[rand(1, 3)]"


/obj/structure/flora/ausbushes/meatshroom
	name = "meatshroom"
	icon = 'icons/obj/flora/ausflora2.dmi'
	icon_state = "meatshroom1"

/obj/structure/flora/ausbushes/meatshroom/New()
	..()
	icon_state = "meatshroom[rand(1, 3)]"

/obj/structure/flora/ausbushes/lrock
	name = "rock"
	icon = 'icons/obj/flora/ausflora2.dmi'
	icon_state = "lrock1"

/obj/structure/flora/ausbushes/lrock/New()
	..()
	icon_state = "lrock[rand(1, 9)]"

/obj/structure/flora/ausbushes/rock
	name = "rock"
	icon = 'icons/obj/flora/ausflora2.dmi'
	icon_state = "rock1"

/obj/structure/flora/ausbushes/rock/New()
	..()
	icon_state = "rock[rand(1, 5)]"

/obj/structure/flora/ausbushes/busha
	icon = 'icons/obj/flora/ausflora2.dmi'
	icon_state = "busha1"

/obj/structure/flora/ausbushes/busha/New()
	..()
	icon_state = "busha[rand(1, 3)]"

/obj/structure/flora/ausbushes/bushab
	icon = 'icons/obj/flora/ausflora2.dmi'
	icon_state = "bushab1"

/obj/structure/flora/ausbushes/bushab/New()
	..()
	icon_state = "bushab[rand(1, 3)]"

/obj/structure/flora/ausbushes/minishroom
	icon = 'icons/obj/flora/ausflora2.dmi'
	icon_state = "minishroom"

/obj/structure/flora/ausbushes/minishroom/New()
	..()
	icon_state = "minishroom"



/obj/structure/flora/yes/armok
	desc = "A statue carved from rock. It roars with noxious fury."
	icon = 'icons/obj/structures/mining.dmi'
	icon_state = "ARMOK"

/obj/structure/flora/yes/baccus
	desc = "A statue carved from rock. It twists in a silent scream."
	icon = 'icons/obj/structures/mining.dmi'
	icon_state = "BACCUS"

/obj/structure/flora/yes/cross
	desc = "A statue carved from rock. It is elaborately shaped into a cross."
	icon = 'icons/obj/structures/mining.dmi'
	icon_state = "cross"

/obj/structure/flora/yes/erista
	desc = "A statue carved from rock. It mocks with a suggestive gloat."
	icon = 'icons/obj/structures/mining.dmi'
	icon_state = "ERISTA"

/obj/structure/flora/yes/thoth
	desc = "A statue carved from rock. It droops glumly in endless thought."
	icon = 'icons/obj/structures/mining.dmi'
	icon_state = "THOTH"

/obj/structure/flora/yes/veles
	desc = "A statue carved from rock. It casts a stern visage."
	icon = 'icons/obj/structures/mining.dmi'
	icon_state = "VELES"

/obj/structure/flora/yes/rock3
	desc = "A statue carved from rock. The elements have deteriorated it beyond recognition."
	icon = 'icons/obj/structures/mining.dmi'
	icon_state = "rock3"

/obj/structure/flora/yes/rock4
	desc = "A statue carved from rock. The elements have deteriorated it beyond recognition."
	icon = 'icons/obj/structures/mining.dmi'
	icon_state = "rock4"

/obj/structure/flora/yes/sadshroom
	desc = "A lumpy mixture of rock and fungus. It's rugged and gloomy."
	icon = 'icons/obj/structures/mining.dmi'
	icon_state = "sadshroom"

/obj/structure/flora/yes/shroomlog5
	desc = "A pile of logs all set for the furnace."
	icon = 'icons/obj/structures/mining.dmi'
	icon_state = "shroomlog5"

/obj/structure/flora/yes/wooden_tv
	desc = "An archaic display. This hasn't worked for a long time."
	icon = 'icons/obj/structures/miscobjs.dmi'
	icon_state = "wooden_tv"

/obj/structure/flora/yes/washer
	desc = "A rusted washer. This hasn't worked for a long time."
	icon = 'icons/obj/structures/miscobjs.dmi'
	icon_state = "washer0"

/obj/structure/flora/yes/plant
	desc = "A potted plant. Close inspection reveals the fine leaves are artifical."
	icon = 'icons/obj/structures/miscobjs.dmi'
	icon_state = "plant"

/obj/structure/flora/jungle
	anchored = TRUE
	mouse_opacity = 0

/obj/structure/flora/jungle/New()
	..()
	set_light(3, 3, "#28284f")

/obj/structure/flora/jungle/trees
	name = "jungle tree"
	icon = 'icons/obj/flora/jungletrees.dmi'
	icon_state = "tree1"
	desc = "A big hunk of wood that gets in the way of you, and who you're trying to shoot."
//potted plants credit: Flashkirby
//potted plants 27-30: Cajoes
/obj/structure/flora/pottedplant
	name = "potted plant"
	desc = "Really brings the room together."
	icon = 'icons/obj/flora/plants.dmi'
	icon_state = "plant-01"
	layer = ABOVE_HUMAN_LAYER

/obj/structure/flora/pottedplant/fern
	name = "potted fern"
	desc = "This is an ordinary looking fern. It looks like it could do with some water."
	icon_state = "plant-02"

/obj/structure/flora/pottedplant/overgrown
	name = "overgrown potted plants"
	desc = "This is an assortment of colourful plants. Some parts are overgrown."
	icon_state = "plant-03"

/obj/structure/flora/pottedplant/bamboo
	name = "potted bamboo"
	desc = "These are bamboo shoots. The tops looks like they've been cut short."
	icon_state = "plant-04"

/obj/structure/flora/pottedplant/largebush
	name = "large potted bush"
	desc = "This is a large bush. The leaves stick upwards in an odd fashion."
	icon_state = "plant-05"

/obj/structure/flora/pottedplant/thinbush
	name = "thin potted bush"
	desc = "This is a thin bush. It appears to be flowering."
	icon_state = "plant-06"

/obj/structure/flora/pottedplant/mysterious
	name = "mysterious potted bulbs"
	desc = "This is a mysterious looking plant. Touching the bulbs cause them to shrink."
	icon_state = "plant-07"

/obj/structure/flora/pottedplant/smalltree
	name = "small potted tree"
	desc = "This is a small tree. It is rather pleasant."
	icon_state = "plant-08"

/obj/structure/flora/pottedplant/unusual
	name = "unusual potted plant"
	desc = "This is an unusual plant. It's bulbous ends emit a soft blue light."
	icon_state = "plant-09"

/obj/structure/flora/pottedplant/unusual/Initialize()
	. = ..()
	set_light(2, 0.4, "#007fff")

/obj/structure/flora/pottedplant/orientaltree
	name = "potted oriental tree"
	desc = "This is a rather oriental style tree. It's flowers are bright pink."
	icon_state = "plant-10"

/obj/structure/flora/pottedplant/smallcactus
	name = "small potted cactus"
	desc = "This is a small cactus. Its needles are sharp."
	icon_state = "plant-11"

/obj/structure/flora/pottedplant/tall
	name = "tall potted plant"
	desc = "This is a tall plant. Tiny pores line its surface."
	icon_state = "plant-12"

/obj/structure/flora/pottedplant/sticky
	name = "sticky potted plant"
	desc = "This is an odd plant. Its sticky leaves trap insects."
	icon_state = "plant-13"

/obj/structure/flora/pottedplant/smelly
	name = "smelly potted plant"
	desc = "This is some kind of tropical plant. It reeks of rotten eggs."
	icon_state = "plant-14"

/obj/structure/flora/pottedplant/aquatic
	name = "aquatic potted plant"
	desc = "This is apparently an aquatic plant. It's probably fake."
	icon_state = "plant-16"

/obj/structure/flora/pottedplant/shoot
	name = "small potted shoot"
	desc = "This is a small shoot. It still needs time to grow."
	icon_state = "plant-17"

/obj/structure/flora/pottedplant/flower
	name = "potted flower"
	desc = "This is a slim plant. Sweet smelling flowers are supported by spindly stems."
	icon_state = "plant-18"

/obj/structure/flora/pottedplant/crystal
	name = "crystalline potted plant"
	desc = "These are rather cubic plants. Odd crystal formations grow on the end."
	icon_state = "plant-19"

/obj/structure/flora/pottedplant/subterranean
	name = "subterranean potted plant"
	desc = "This is a subterranean plant. It's bulbous ends glow faintly."
	icon_state = "plant-20"

/obj/structure/flora/pottedplant/subterranean/Initialize()
	. = ..()
	set_light(2, 0.4, "#ff6633")

/obj/structure/flora/pottedplant/minitree
	name = "potted tree"
	desc = "This is a miniature tree. Apparently it was grown to 1/5 scale."
	icon_state = "plant-21"

/obj/structure/flora/pottedplant/stoutbush
	name = "stout potted bush"
	desc = "This is a stout bush. Its leaves point up and outwards."
	icon_state = "plant-22"

/obj/structure/flora/pottedplant/drooping
	name = "drooping potted plant"
	desc = "This is a small plant. The drooping leaves make it look like its wilted."
	icon_state = "plant-23"

/obj/structure/flora/pottedplant/tropical
	name = "tropical potted plant"
	desc = "This is some kind of tropical plant. It hasn't begun to flower yet."
	icon_state = "plant-24"

/obj/structure/flora/pottedplant/dead
	name = "dead potted plant"
	desc = "This is the dried up remains of a dead plant. Someone should replace it."
	icon_state = "plant-25"

/obj/structure/flora/pottedplant/large
	name = "large potted plant"
	desc = "This is a large plant. Three branches support pairs of waxy leaves."
	icon_state = "plant-26"

/obj/structure/flora/pottedplant/decorative
	name = "decorative potted plant"
	desc = "This is a decorative shrub. It's been trimmed into the shape of an apple."
	icon_state = "applebush"

/obj/structure/flora/pottedplant/floorleaf
	name = "fancy leafy floor plant"
	desc = "This plant has remarkably waxy leaves."
	icon_state = "plant-28"
