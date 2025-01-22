// These are objects that destroy themselves and add themselves to the
// decal list of the floor under them. Use them rather than distinct icon_states
// when mapping in interesting floor designs.
var/global/list/floor_decals = list()

/obj/floor_decal
	name = "floor decal"
	icon = 'icons/turf/flooring/decals.dmi'
	layer = DECAL_LAYER
	appearance_flags = DEFAULT_APPEARANCE_FLAGS | RESET_COLOR
	var/supplied_dir
	var/detail_overlay
	var/detail_color

/obj/floor_decal/New(newloc, newdir, newcolour, newappearance)
	supplied_dir = newdir
	if(newappearance) appearance = newappearance
	if(newcolour) color = newcolour
	..(newloc)

/obj/floor_decal/Initialize()
	SHOULD_CALL_PARENT(FALSE)
	if(supplied_dir) set_dir(supplied_dir)
	var/turf/T = get_turf(src)
	if(istype(T, /turf/simulated/floor) || istype(T, /turf/unsimulated/floor))
		layer = T.is_plating() ? DECAL_PLATING_LAYER : DECAL_LAYER
		var/cache_key = "[alpha]-[color]-[dir]-[icon_state]-[plane]-[layer]-[detail_overlay]-[detail_color]"
		if(!floor_decals[cache_key])
			var/image/I = image(icon = src.icon, icon_state = src.icon_state, dir = src.dir)
			I.layer = layer
			I.appearance_flags = DEFAULT_APPEARANCE_FLAGS | appearance_flags
			I.color = src.color
			I.alpha = src.alpha
			if(detail_overlay)
				var/image/B = overlay_image(icon, "[detail_overlay]", flags=RESET_COLOR)
				B.color = detail_color
				I.AddOverlays(B)
			floor_decals[cache_key] = I
		LAZYADD(T.decals, floor_decals[cache_key])
		T.queue_icon_update()
	atom_flags |= ATOM_FLAG_INITIALIZED
	return INITIALIZE_HINT_QDEL

/obj/floor_decal/reset
	name = "reset marker"

/obj/floor_decal/reset/Initialize()
	SHOULD_CALL_PARENT(FALSE)
	var/turf/T = get_turf(src)
	T.remove_decals()
	T.update_icon()
	atom_flags |= ATOM_FLAG_INITIALIZED
	return INITIALIZE_HINT_QDEL

/obj/floor_decal/carpet
	name = "brown carpet"
	icon = 'icons/turf/flooring/carpet.dmi'
	icon_state = "brown_edges"

/obj/floor_decal/carpet/blue
	name = "blue carpet"
	icon_state = "blue1_edges"

/obj/floor_decal/carpet/blue2
	name = "pale blue carpet"
	icon_state = "blue2_edges"

/obj/floor_decal/carpet/purple
	name = "purple carpet"
	icon_state = "purple_edges"

/obj/floor_decal/carpet/orange
	name = "orange carpet"
	icon_state = "orange_edges"

/obj/floor_decal/carpet/green
	name = "green carpet"
	icon_state = "green_edges"

/obj/floor_decal/carpet/red
	name = "red carpet"
	icon_state = "red_edges"

/obj/floor_decal/carpet/corners
	name = "brown carpet"
	icon_state = "brown_corners"

/obj/floor_decal/carpet/blue/corners
	name = "blue carpet"
	icon_state = "blue1_corners"

/obj/floor_decal/carpet/blue2/corners
	name = "pale blue carpet"
	icon_state = "blue2_corners"

/obj/floor_decal/carpet/purple/corners
	name = "purple carpet"
	icon_state = "purple_corners"

/obj/floor_decal/carpet/orange/corners
	name = "orange carpet"
	icon_state = "orange_corners"

/obj/floor_decal/carpet/green/corners
	name = "green carpet"
	icon_state = "green_corners"

/obj/floor_decal/carpet/red/corners
	name = "red carpet"
	icon_state = "red_corners"

/obj/floor_decal/corner
	icon_state = "corner_white"
	alpha = 229

/obj/floor_decal/corner/black
	name = "black corner"
	color = "#333333"

/obj/floor_decal/corner/black/diagonal
	icon_state = "corner_white_diagonal"

/obj/floor_decal/corner/black/three_quarters
	icon_state = "corner_white_three_quarters"

/obj/floor_decal/corner/black/full
	icon_state = "corner_white_full"

/obj/floor_decal/corner/black/border
	icon_state = "bordercolor"

/obj/floor_decal/corner/black/half
	icon_state = "bordercolorhalf"

/obj/floor_decal/corner/black/mono
	icon_state = "bordercolormonofull"

/obj/floor_decal/corner/black/bordercorner
	icon_state = "bordercolorcorner"

/obj/floor_decal/corner/black/bordercorner2
	icon_state = "bordercolorcorner2"

/obj/floor_decal/corner/black/borderfull
	icon_state = "bordercolorfull"

/obj/floor_decal/corner/black/bordercee
	icon_state = "bordercolorcee"

/obj/floor_decal/corner/blue
	name = "blue corner"
	color = COLOR_BLUE_GRAY

/obj/floor_decal/corner/blue/diagonal
	icon_state = "corner_white_diagonal"

/obj/floor_decal/corner/blue/three_quarters
	icon_state = "corner_white_three_quarters"

/obj/floor_decal/corner/blue/full
	icon_state = "corner_white_full"

/obj/floor_decal/corner/blue/border
	icon_state = "bordercolor"

/obj/floor_decal/corner/blue/half
	icon_state = "bordercolorhalf"

/obj/floor_decal/corner/blue/mono
	icon_state = "bordercolormonofull"

/obj/floor_decal/corner/blue/bordercorner
	icon_state = "bordercolorcorner"

/obj/floor_decal/corner/blue/bordercorner2
	icon_state = "bordercolorcorner2"

/obj/floor_decal/corner/blue/borderfull
	icon_state = "bordercolorfull"

/obj/floor_decal/corner/blue/bordercee
	icon_state = "bordercolorcee"

/obj/floor_decal/corner/paleblue
	name = "pale blue corner"
	color = COLOR_PALE_BLUE_GRAY

/obj/floor_decal/corner/paleblue/diagonal
	icon_state = "corner_white_diagonal"

/obj/floor_decal/corner/paleblue/three_quarters
	icon_state = "corner_white_three_quarters"

/obj/floor_decal/corner/paleblue/full
	icon_state = "corner_white_full"

/obj/floor_decal/corner/paleblue/border
	icon_state = "bordercolor"

/obj/floor_decal/corner/paleblue/half
	icon_state = "bordercolorhalf"

/obj/floor_decal/corner/paleblue/mono
	icon_state = "bordercolormonofull"

/obj/floor_decal/corner/paleblue/bordercorner
	icon_state = "bordercolorcorner"

/obj/floor_decal/corner/paleblue/bordercorner2
	icon_state = "bordercolorcorner2"

/obj/floor_decal/corner/paleblue/borderfull
	icon_state = "bordercolorfull"

/obj/floor_decal/corner/paleblue/bordercee
	icon_state = "bordercolorcee"

/obj/floor_decal/corner/green
	name = "green corner"
	color = COLOR_GREEN_GRAY

/obj/floor_decal/corner/green/diagonal
	icon_state = "corner_white_diagonal"

/obj/floor_decal/corner/green/three_quarters
	icon_state = "corner_white_three_quarters"

/obj/floor_decal/corner/green/full
	icon_state = "corner_white_full"

/obj/floor_decal/corner/green/border
	icon_state = "bordercolor"

/obj/floor_decal/corner/green/half
	icon_state = "bordercolorhalf"

/obj/floor_decal/corner/green/mono
	icon_state = "bordercolormonofull"

/obj/floor_decal/corner/green/bordercorner
	icon_state = "bordercolorcorner"

/obj/floor_decal/corner/green/bordercorner2
	icon_state = "bordercolorcorner2"

/obj/floor_decal/corner/green/borderfull
	icon_state = "bordercolorfull"

/obj/floor_decal/corner/green/bordercee
	icon_state = "bordercolorcee"

/obj/floor_decal/corner/lime
	name = "lime corner"
	color = COLOR_PALE_GREEN_GRAY

/obj/floor_decal/corner/lime/diagonal
	icon_state = "corner_white_diagonal"

/obj/floor_decal/corner/lime/three_quarters
	icon_state = "corner_white_three_quarters"

/obj/floor_decal/corner/lime/full
	icon_state = "corner_white_full"

/obj/floor_decal/corner/lime/border
	icon_state = "bordercolor"

/obj/floor_decal/corner/lime/half
	icon_state = "bordercolorhalf"

/obj/floor_decal/corner/lime/mono
	icon_state = "bordercolormonofull"

/obj/floor_decal/corner/lime/bordercorner
	icon_state = "bordercolorcorner"

/obj/floor_decal/corner/lime/bordercorner2
	icon_state = "bordercolorcorner2"

/obj/floor_decal/corner/lime/borderfull
	icon_state = "bordercolorfull"

/obj/floor_decal/corner/lime/bordercee
	icon_state = "bordercolorcee"

/obj/floor_decal/corner/yellow
	name = "yellow corner"
	color = COLOR_BROWN

/obj/floor_decal/corner/yellow/diagonal
	icon_state = "corner_white_diagonal"

/obj/floor_decal/corner/yellow/three_quarters
	icon_state = "corner_white_three_quarters"

/obj/floor_decal/corner/yellow/full
	icon_state = "corner_white_full"

/obj/floor_decal/corner/yellow/border
	icon_state = "bordercolor"

/obj/floor_decal/corner/yellow/half
	icon_state = "bordercolorhalf"

/obj/floor_decal/corner/yellow/mono
	icon_state = "bordercolormonofull"

/obj/floor_decal/corner/yellow/bordercorner
	icon_state = "bordercolorcorner"

/obj/floor_decal/corner/yellow/bordercorner2
	icon_state = "bordercolorcorner2"

/obj/floor_decal/corner/yellow/borderfull
	icon_state = "bordercolorfull"

/obj/floor_decal/corner/yellow/bordercee
	icon_state = "bordercolorcee"

/obj/floor_decal/corner/beige
	name = "beige corner"
	color = COLOR_BEIGE

/obj/floor_decal/corner/beige/diagonal
	icon_state = "corner_white_diagonal"

/obj/floor_decal/corner/beige/three_quarters
	icon_state = "corner_white_three_quarters"

/obj/floor_decal/corner/beige/full
	icon_state = "corner_white_full"

/obj/floor_decal/corner/beige/half
	icon_state = "bordercolorhalf"

/obj/floor_decal/corner/beige/mono
	icon_state = "bordercolormonofull"

/obj/floor_decal/corner/beige/border
	icon_state = "bordercolor"

/obj/floor_decal/corner/beige/bordercorner
	icon_state = "bordercolorcorner"

/obj/floor_decal/corner/beige/bordercorner2
	icon_state = "bordercolorcorner2"

/obj/floor_decal/corner/beige/borderfull
	icon_state = "bordercolorfull"

/obj/floor_decal/corner/beige/bordercee
	icon_state = "bordercolorcee"

/obj/floor_decal/corner/red
	name = "red corner"
	color = COLOR_RED_GRAY

/obj/floor_decal/corner/red/diagonal
	icon_state = "corner_white_diagonal"

/obj/floor_decal/corner/red/three_quarters
	icon_state = "corner_white_three_quarters"

/obj/floor_decal/corner/red/full
	icon_state = "corner_white_full"

/obj/floor_decal/corner/red/border
	icon_state = "bordercolor"

/obj/floor_decal/corner/red/half
	icon_state = "bordercolorhalf"

/obj/floor_decal/corner/red/mono
	icon_state = "bordercolormonofull"

/obj/floor_decal/corner/red/bordercorner
	icon_state = "bordercolorcorner"

/obj/floor_decal/corner/red/bordercorner2
	icon_state = "bordercolorcorner2"

/obj/floor_decal/corner/red/borderfull
	icon_state = "bordercolorfull"

/obj/floor_decal/corner/red/bordercee
	icon_state = "bordercolorcee"

/obj/floor_decal/corner/pink
	name = "pink corner"
	color = COLOR_PALE_RED_GRAY

/obj/floor_decal/corner/pink/diagonal
	icon_state = "corner_white_diagonal"

/obj/floor_decal/corner/pink/three_quarters
	icon_state = "corner_white_three_quarters"

/obj/floor_decal/corner/pink/full
	icon_state = "corner_white_full"

/obj/floor_decal/corner/pink/border
	icon_state = "bordercolor"

/obj/floor_decal/corner/pink/half
	icon_state = "bordercolorhalf"

/obj/floor_decal/corner/pink/mono
	icon_state = "bordercolormonofull"

/obj/floor_decal/corner/pink/bordercorner
	icon_state = "bordercolorcorner"

/obj/floor_decal/corner/pink/bordercorner2
	icon_state = "bordercolorcorner2"

/obj/floor_decal/corner/pink/borderfull
	icon_state = "bordercolorfull"

/obj/floor_decal/corner/pink/bordercee
	icon_state = "bordercolorcee"

/obj/floor_decal/corner/purple
	name = "purple corner"
	color = COLOR_PURPLE_GRAY

/obj/floor_decal/corner/purple/diagonal
	icon_state = "corner_white_diagonal"

/obj/floor_decal/corner/purple/three_quarters
	icon_state = "corner_white_three_quarters"

/obj/floor_decal/corner/purple/full
	icon_state = "corner_white_full"

/obj/floor_decal/corner/purple/border
	icon_state = "bordercolor"

/obj/floor_decal/corner/purple/half
	icon_state = "bordercolorhalf"

/obj/floor_decal/corner/purple/mono
	icon_state = "bordercolormonofull"

/obj/floor_decal/corner/purple/bordercorner
	icon_state = "bordercolorcorner"

/obj/floor_decal/corner/purple/bordercorner2
	icon_state = "bordercolorcorner2"

/obj/floor_decal/corner/purple/borderfull
	icon_state = "bordercolorfull"

/obj/floor_decal/corner/purple/bordercee
	icon_state = "bordercolorcee"

/obj/floor_decal/corner/mauve
	name = "mauve corner"
	color = COLOR_PALE_PURPLE_GRAY

/obj/floor_decal/corner/mauve/diagonal
	icon_state = "corner_white_diagonal"

/obj/floor_decal/corner/mauve/three_quarters
	icon_state = "corner_white_three_quarters"

/obj/floor_decal/corner/mauve/full
	icon_state = "corner_white_full"

/obj/floor_decal/corner/mauve/border
	icon_state = "bordercolor"

/obj/floor_decal/corner/mauve/half
	icon_state = "bordercolorhalf"

/obj/floor_decal/corner/mauve/mono
	icon_state = "bordercolormonofull"

/obj/floor_decal/corner/mauve/bordercorner
	icon_state = "bordercolorcorner"

/obj/floor_decal/corner/mauve/bordercorner2
	icon_state = "bordercolorcorner2"

/obj/floor_decal/corner/mauve/borderfull
	icon_state = "bordercolorfull"

/obj/floor_decal/corner/mauve/bordercee
	icon_state = "bordercolorcee"

/obj/floor_decal/corner/orange
	name = "orange corner"
	color = COLOR_DARK_ORANGE

/obj/floor_decal/corner/orange/diagonal
	icon_state = "corner_white_diagonal"

/obj/floor_decal/corner/orange/three_quarters
	icon_state = "corner_white_three_quarters"

/obj/floor_decal/corner/orange/full
	icon_state = "corner_white_full"

/obj/floor_decal/corner/orange/border
	icon_state = "bordercolor"

/obj/floor_decal/corner/orange/half
	icon_state = "bordercolorhalf"

/obj/floor_decal/corner/orange/mono
	icon_state = "bordercolormonofull"

/obj/floor_decal/corner/orange/bordercorner
	icon_state = "bordercolorcorner"

/obj/floor_decal/corner/orange/bordercorner2
	icon_state = "bordercolorcorner2"

/obj/floor_decal/corner/orange/borderfull
	icon_state = "bordercolorfull"

/obj/floor_decal/corner/orange/bordercee
	icon_state = "bordercolorcee"

/obj/floor_decal/corner/brown
	name = "brown corner"
	color = COLOR_DARK_BROWN

/obj/floor_decal/corner/brown/diagonal
	icon_state = "corner_white_diagonal"

/obj/floor_decal/corner/brown/three_quarters
	icon_state = "corner_white_three_quarters"

/obj/floor_decal/corner/brown/full
	icon_state = "corner_white_full"

/obj/floor_decal/corner/brown/border
	icon_state = "bordercolor"

/obj/floor_decal/corner/brown/half
	icon_state = "bordercolorhalf"

/obj/floor_decal/corner/brown/mono
	icon_state = "bordercolormonofull"

/obj/floor_decal/corner/brown/bordercorner
	icon_state = "bordercolorcorner"

/obj/floor_decal/corner/brown/bordercorner2
	icon_state = "bordercolorcorner2"

/obj/floor_decal/corner/brown/borderfull
	icon_state = "bordercolorfull"

/obj/floor_decal/corner/brown/bordercee
	icon_state = "bordercolorcee"

/obj/floor_decal/corner/white
	name = "white corner"
	icon_state = "corner_white"

/obj/floor_decal/corner/white/diagonal
	icon_state = "corner_white_diagonal"

/obj/floor_decal/corner/white/three_quarters
	icon_state = "corner_white_three_quarters"

/obj/floor_decal/corner/white/full
	icon_state = "corner_white_full"

/obj/floor_decal/corner/white/half
	icon_state = "bordercolorhalf"

/obj/floor_decal/corner/white/mono
	icon_state = "bordercolormonofull"

/obj/floor_decal/corner/grey
	name = "grey corner"
	color = "#8d8c8c"

/obj/floor_decal/corner/grey/diagonal
	icon_state = "corner_white_diagonal"

/obj/floor_decal/corner/grey/three_quarters
	icon_state = "corner_white_three_quarters"

/obj/floor_decal/corner/grey/full
	icon_state = "corner_white_full"

/obj/floor_decal/corner/white/border
	icon_state = "bordercolor"

/obj/floor_decal/corner/grey/half
	icon_state = "bordercolorhalf"

/obj/floor_decal/corner/grey/mono
	icon_state = "bordercolormonofull"

/obj/floor_decal/corner/white/bordercorner
	icon_state = "bordercolorcorner"

/obj/floor_decal/corner/white/bordercorner2
	icon_state = "bordercolorcorner2"

/obj/floor_decal/corner/white/borderfull
	icon_state = "bordercolorfull"

/obj/floor_decal/corner/white/bordercee
	icon_state = "bordercolorcee"

/obj/floor_decal/corner/grey/diagonal
	icon_state = "corner_white_diagonal"

/obj/floor_decal/corner/grey/three_quarters
	icon_state = "corner_white_three_quarters"

/obj/floor_decal/corner/grey/border
	icon_state = "bordercolor"

/obj/floor_decal/corner/grey/bordercorner
	icon_state = "bordercolorcorner"

/obj/floor_decal/corner/grey/bordercorner
	icon_state = "bordercolorcorner"

/obj/floor_decal/corner/grey/borderfull
	icon_state = "bordercolorfull"

/obj/floor_decal/corner/grey/bordercee
	icon_state = "bordercolorcee"

/obj/floor_decal/corner/lightgrey
	name = "lightgrey corner"
	color = "#a8b2b6"

/obj/floor_decal/corner/lightgrey/diagonal
	icon_state = "corner_white_diagonal"

/obj/floor_decal/corner/lightgrey/three_quarters
	icon_state = "corner_white_three_quarters"

/obj/floor_decal/corner/lightgrey/full
	icon_state = "corner_white_full"

/obj/floor_decal/corner/lightgrey/border
	icon_state = "bordercolor"

/obj/floor_decal/corner/lightgrey/half
	icon_state = "bordercolorhalf"

/obj/floor_decal/corner/lightgrey/mono
	icon_state = "bordercolormonofull"

/obj/floor_decal/corner/lightgrey/bordercorner
	icon_state = "bordercolorcorner"

/obj/floor_decal/corner/lightgrey/bordercorner2
	icon_state = "bordercolorcorner2"

/obj/floor_decal/corner/lightgrey/borderfull
	icon_state = "bordercolorfull"

/obj/floor_decal/corner/lightgrey/bordercee
	icon_state = "bordercolorcee"

/obj/floor_decal/corner/b_green
	name = "bottle green corner"
	color = COLOR_PALE_BTL_GREEN

/obj/floor_decal/corner/b_green/diagonal
	icon_state = "corner_white_diagonal"

/obj/floor_decal/corner/b_green/three_quarters
	icon_state = "corner_white_three_quarters"

/obj/floor_decal/corner/b_green/full
	icon_state = "corner_white_full"

/obj/floor_decal/corner/b_green/border
	icon_state = "bordercolor"

/obj/floor_decal/corner/b_green/half
	icon_state = "bordercolorhalf"

/obj/floor_decal/corner/b_green/mono
	icon_state = "bordercolormonofull"

/obj/floor_decal/corner/b_green/bordercorner
	icon_state = "bordercolorcorner"

/obj/floor_decal/corner/b_green/bordercorner2
	icon_state = "bordercolorcorner2"

/obj/floor_decal/corner/b_green/borderfull
	icon_state = "bordercolorfull"

/obj/floor_decal/corner/b_green/bordercee
	icon_state = "bordercolorcee"

/obj/floor_decal/corner/research
	name = "research corner"
	color = COLOR_RESEARCH

/obj/floor_decal/corner/research/diagonal
	icon_state = "corner_white_diagonal"

/obj/floor_decal/corner/research/three_quarters
	icon_state = "corner_white_three_quarters"

/obj/floor_decal/corner/research/full
	icon_state = "corner_white_full"

/obj/floor_decal/corner/research/border
	icon_state = "bordercolor"

/obj/floor_decal/corner/research/half
	icon_state = "bordercolorhalf"

/obj/floor_decal/corner/research/mono
	icon_state = "bordercolormonofull"

/obj/floor_decal/corner/research/bordercorner
	icon_state = "bordercolorcorner"

/obj/floor_decal/corner/research/bordercorner2
	icon_state = "bordercolorcorner2"

/obj/floor_decal/corner/research/borderfull
	icon_state = "bordercolorfull"

/obj/floor_decal/corner/research/bordercee
	icon_state = "bordercolorcee"

/obj/floor_decal/spline/plain
	name = "spline - plain"
	icon_state = "spline_plain"
	alpha = 229

/obj/floor_decal/spline/plain/black
	color = "#333333"

/obj/floor_decal/spline/plain/blue
	color = COLOR_BLUE_GRAY

/obj/floor_decal/spline/plain/paleblue
	color = COLOR_PALE_BLUE_GRAY

/obj/floor_decal/spline/plain/green
	color = COLOR_GREEN_GRAY

/obj/floor_decal/spline/plain/lime
	color = COLOR_PALE_GREEN_GRAY

/obj/floor_decal/spline/plain/yellow
	color = COLOR_BROWN

/obj/floor_decal/spline/plain/beige
	color = COLOR_BEIGE

/obj/floor_decal/spline/plain/red
	color = COLOR_RED_GRAY

/obj/floor_decal/spline/plain/pink
	color = COLOR_PALE_RED_GRAY

/obj/floor_decal/spline/plain/purple
	color = COLOR_PURPLE_GRAY

/obj/floor_decal/spline/plain/mauve
	color = COLOR_PALE_PURPLE_GRAY

/obj/floor_decal/spline/plain/orange
	color = COLOR_DARK_ORANGE

/obj/floor_decal/spline/plain/brown
	color = COLOR_DARK_BROWN

/obj/floor_decal/spline/plain/white
	color = COLOR_WHITE

/obj/floor_decal/spline/plain/grey
	color = "#8d8c8c"

/obj/floor_decal/spline/fancy
	name = "spline - fancy"
	icon_state = "spline_fancy"

/obj/floor_decal/spline/fancy/black
	color = COLOR_GRAY

/obj/floor_decal/spline/fancy/black/corner
	icon_state = "spline_fancy_corner"

/obj/floor_decal/spline/fancy/wood
	name = "spline - wood"
	color = "#cb9e04"

/obj/floor_decal/spline/fancy/wood/corner
	icon_state = "spline_fancy_corner"

/obj/floor_decal/spline/fancy/wood/cee
	icon_state = "spline_fancy_cee"

/obj/floor_decal/spline/fancy/wood/three_quarters
	icon_state = "spline_fancy_full"

/obj/floor_decal/industrial/warning
	name = "hazard stripes"
	color = "#d2d53d"
	icon_state = "stripe"

/obj/floor_decal/industrial/warning/corner
	icon_state = "stripecorner"

/obj/floor_decal/industrial/warning/full
	icon_state = "stripefull"


/obj/floor_decal/industrial/warning/cee
	icon_state = "stripecee"

/obj/floor_decal/industrial/warning/fulltile
	icon_state = "stripefulltile"

/obj/floor_decal/industrial/custodial
	name = "custodial stripes"
	icon_state = "stripe"

/obj/floor_decal/industrial/custodial/corner
	icon_state = "stripecorner"

/obj/floor_decal/industrial/custodial/full
	icon_state = "stripefull"

/obj/floor_decal/industrial/custodial/cee
	icon_state = "stripecee"

/obj/floor_decal/industrial/custodial/fulltile
	icon_state = "stripefulltile"

/obj/floor_decal/industrial/fire
	name = "fire safety stripes"
	icon_state = "stripe"
	detail_overlay = "overstripe"
	detail_color = "#c90000"

/obj/floor_decal/industrial/fire/corner
	icon_state = "stripecorner"
	detail_overlay = "overstripecorner"

/obj/floor_decal/industrial/fire/full
	icon_state = "stripefull"
	detail_overlay = "overstripefull"

/obj/floor_decal/industrial/fire/cee
	icon_state = "stripecee"
	detail_overlay = "overstripecee"

/obj/floor_decal/industrial/fire/fulltile
	icon_state = "stripefulltile"

/obj/floor_decal/industrial/radiation
	name = "radiation hazard stripes"
	icon_state = "stripe"
	color = "#d2d53d"
	detail_overlay = "overstripe"
	detail_color =  "#c900fb"

/obj/floor_decal/industrial/radiation/corner
	icon_state = "stripecorner"
	detail_overlay = "overstripecorner"

/obj/floor_decal/industrial/radiation/full
	icon_state = "stripefull"
	detail_overlay = "overstripefull"

/obj/floor_decal/industrial/radiation/cee
	icon_state = "stripecee"
	detail_overlay = "overstripecee"

/obj/floor_decal/industrial/radiation/fulltile
	icon_state = "stripefulltile"

/obj/floor_decal/industrial/firstaid
	name = "first aid stripes"
	icon_state = "stripe"
	detail_overlay = "overstripe"
	detail_color =  "#00cd00"

/obj/floor_decal/industrial/firstaid/corner
	icon_state = "stripecorner"
	detail_overlay = "overstripecorner"

/obj/floor_decal/industrial/firstaid/full
	icon_state = "stripefull"
	detail_overlay = "overstripefull"

/obj/floor_decal/industrial/firstaid/cee
	icon_state = "stripecee"
	detail_overlay = "overstripecee"

/obj/floor_decal/industrial/firstaid/fulltile
	icon_state = "stripefulltile"

/obj/floor_decal/industrial/defective
	name = "defective machinery stripes"
	icon_state = "stripe"
	detail_overlay = "overstripe"
	detail_color = "#0000fb"

/obj/floor_decal/industrial/defective/corner
	icon_state = "stripecorner"
	detail_overlay = "overstripecorner"

/obj/floor_decal/industrial/defective/full
	icon_state = "stripefull"
	detail_overlay = "overstripefull"

/obj/floor_decal/industrial/defective/cee
	icon_state = "stripecee"
	detail_overlay = "overstripecee"

/obj/floor_decal/industrial/defective/fulltile
	icon_state = "stripefulltile"

/obj/floor_decal/industrial/traffic
	name = "traffic hazard stripes"
	icon_state = "stripe"
	detail_overlay = "overstripe"
	detail_color = "#fb9700"

/obj/floor_decal/industrial/traffic/corner
	icon_state = "stripecorner"
	detail_overlay = "overstripecorner"

/obj/floor_decal/industrial/traffic/full
	icon_state = "stripefull"
	detail_overlay = "overstripefull"

/obj/floor_decal/industrial/traffic/cee
	icon_state = "stripecee"
	detail_overlay = "overstripecee"

/obj/floor_decal/industrial/traffic/fulltile
	icon_state = "stripefulltile"

/obj/floor_decal/industrial/warning/dust
	name = "hazard stripes"
	icon_state = "warning_dust"

/obj/floor_decal/industrial/warning/dust/corner
	name = "hazard stripes"
	icon_state = "warningcorner_dust"

/obj/floor_decal/industrial/hatch
	name = "hatched marking"
	icon_state = "delivery"
	alpha = 229

/obj/floor_decal/industrial/hatch/yellow
	color = "#cfcf55"

/obj/floor_decal/industrial/hatch/red
	color = COLOR_RED_GRAY

/obj/floor_decal/industrial/hatch/orange
	color = COLOR_DARK_ORANGE

/obj/floor_decal/industrial/hatch/blue
	color = COLOR_BLUE_GRAY

/obj/floor_decal/industrial/shutoff
	name = "shutoff valve marker"
	icon_state = "shutoff"

/obj/floor_decal/industrial/outline
	name = "white outline"
	icon_state = "outline"
	alpha = 229

/obj/floor_decal/industrial/outline/blue
	name = "blue outline"
	color = "#00b8b2"

/obj/floor_decal/industrial/outline/yellow
	name = "yellow outline"
	color = "#cfcf55"

/obj/floor_decal/industrial/outline/grey
	name = "grey outline"
	color = "#808080"

/obj/floor_decal/industrial/outline/red
	name = "red outline"
	color = COLOR_RED_GRAY

/obj/floor_decal/industrial/outline/orange
	name = "orange outline"
	color = COLOR_DARK_ORANGE

/obj/floor_decal/industrial/loading
	name = "loading area"
	icon_state = "loadingarea"
	alpha = 229

/obj/floor_decal/plaque
	name = "plaque"
	icon_state = "plaque"

/obj/floor_decal/asteroid
	name = "random asteroid rubble"
	icon_state = "asteroid0"

/obj/floor_decal/beach
	name = "sandy border"
	icon = 'icons/misc/beach.dmi'
	icon_state = "beachborder"

/obj/floor_decal/beach/corner
	icon_state = "beachbordercorner"

/obj/floor_decal/asteroid/New()
	icon_state = "asteroid[rand(0,9)]"
	..()

/obj/floor_decal/chapel
	name = "chapel"
	icon_state = "chapel"

/obj/floor_decal/ss13/l1
	name = "L1"
	icon_state = "L1"

/obj/floor_decal/ss13/l2
	name = "L2"
	icon_state = "L2"

/obj/floor_decal/ss13/l3
	name = "L3"
	icon_state = "L3"

/obj/floor_decal/ss13/l4
	name = "L4"
	icon_state = "L4"

/obj/floor_decal/ss13/l5
	name = "L5"
	icon_state = "L5"

/obj/floor_decal/ss13/l6
	name = "L6"
	icon_state = "L6"

/obj/floor_decal/ss13/l7
	name = "L7"
	icon_state = "L7"

/obj/floor_decal/ss13/l8
	name = "L8"
	icon_state = "L8"

/obj/floor_decal/ss13/l9
	name = "L9"
	icon_state = "L9"

/obj/floor_decal/ss13/l10
	name = "L10"
	icon_state = "L10"

/obj/floor_decal/ss13/l11
	name = "L11"
	icon_state = "L11"

/obj/floor_decal/ss13/l12
	name = "L12"
	icon_state = "L12"

/obj/floor_decal/ss13/l13
	name = "L13"
	icon_state = "L13"

/obj/floor_decal/ss13/l14
	name = "L14"
	icon_state = "L14"

/obj/floor_decal/ss13/l15
	name = "L15"
	icon_state = "L15"

/obj/floor_decal/ss13/l16
	name = "L16"
	icon_state = "L16"

/obj/floor_decal/sign
	name = "floor sign"
	icon_state = "white_1"

/obj/floor_decal/sign/two
	icon_state = "white_2"

/obj/floor_decal/sign/a
	icon_state = "white_a"

/obj/floor_decal/sign/b
	icon_state = "white_b"

/obj/floor_decal/sign/c
	icon_state = "white_c"

/obj/floor_decal/sign/d
	icon_state = "white_d"

/obj/floor_decal/sign/ex
	icon_state = "white_ex"

/obj/floor_decal/sign/m
	icon_state = "white_m"

/obj/floor_decal/sign/cmo
	icon_state = "white_cmo"

/obj/floor_decal/sign/v
	icon_state = "white_v"

/obj/floor_decal/sign/p
	icon_state = "white_p"

/obj/floor_decal/sign/or1
	icon_state = "white_or1"

/obj/floor_decal/sign/or2
	icon_state = "white_or2"

/obj/floor_decal/sign/tr
	icon_state = "white_tr"

/obj/floor_decal/sign/pop
	icon_state = "white_pop"

/obj/floor_decal/solarpanel
	icon_state = "solarpanel"

/obj/floor_decal/snow
	icon = 'icons/turf/overlays.dmi'
	icon_state = "snowfloor"

/obj/floor_decal/floordetail
	layer = TURF_DETAIL_LAYER
	color = COLOR_GUNMETAL
	icon_state = "manydot"
	appearance_flags = DEFAULT_APPEARANCE_FLAGS

/obj/floor_decal/floordetail/New(newloc, newdir, newcolour)
	color = null //color is here just for map preview, if left it applies both our and tile colors.
	..()

/obj/floor_decal/floordetail/tiled
	icon_state = "manydot_tiled"

/obj/floor_decal/floordetail/pryhole
	icon_state = "pryhole"

/obj/floor_decal/floordetail/edgedrain
	icon_state = "edge"

/obj/floor_decal/floordetail/traction
	icon_state = "traction"

/obj/floor_decal/ntlogo
	icon_state = "ntlogo"

/obj/floor_decal/torchltdlogo
	alpha = 230
	icon = 'icons/turf/flooring/corp_floor.dmi'
	icon_state = "bottomleft"

//Techfloor

/obj/floor_decal/corner_techfloor_gray
	name = "corner techfloorgray"
	icon_state = "corner_techfloor_gray"

/obj/floor_decal/corner_techfloor_gray/diagonal
	name = "corner techfloorgray diagonal"
	icon_state = "corner_techfloor_gray_diagonal"

/obj/floor_decal/corner_techfloor_gray/full
	name = "corner techfloorgray full"
	icon_state = "corner_techfloor_gray_full"

/obj/floor_decal/corner_techfloor_grid
	name = "corner techfloorgrid"
	icon_state = "corner_techfloor_grid"

/obj/floor_decal/corner_techfloor_grid/diagonal
	name = "corner techfloorgrid diagonal"
	icon_state = "corner_techfloor_grid_diagonal"

/obj/floor_decal/corner_techfloor_grid/full
	name = "corner techfloorgrid full"
	icon_state = "corner_techfloor_grid_full"

/obj/floor_decal/corner_steel_grid
	name = "corner steel_grid"
	icon_state = "steel_grid"

/obj/floor_decal/corner_steel_grid/diagonal
	name = "corner tsteel_grid diagonal"
	icon_state = "steel_grid_diagonal"

/obj/floor_decal/corner_steel_grid/full
	name = "corner steel_grid full"
	icon_state = "steel_grid_full"

/obj/floor_decal/borderfloor
	name = "border floor"
	icon_state = "borderfloor_white"
	color = COLOR_GUNMETAL

/obj/floor_decal/borderfloor/corner
	icon_state = "borderfloorcorner_white"

/obj/floor_decal/borderfloor/corner2
	icon_state = "borderfloorcorner2_white"

/obj/floor_decal/borderfloor/full
	icon_state = "borderfloorfull_white"

/obj/floor_decal/borderfloor/cee
	icon_state = "borderfloorcee_white"

/obj/floor_decal/borderfloorblack
	name = "border floor"
	icon_state = "borderfloor_white"
	color = COLOR_DARK_GRAY

/obj/floor_decal/borderfloorblack/corner
	icon_state = "borderfloorcorner_white"

/obj/floor_decal/borderfloorblack/corner2
	icon_state = "borderfloorcorner2_white"

/obj/floor_decal/borderfloorblack/full
	icon_state = "borderfloorfull_white"

/obj/floor_decal/borderfloorblack/cee
	icon_state = "borderfloorcee_white"

/obj/floor_decal/borderfloorwhite
	name = "border floor"
	icon_state = "borderfloor_white"

/obj/floor_decal/borderfloorwhite/corner
	icon_state = "borderfloorcorner_white"

/obj/floor_decal/borderfloorwhite/corner2
	icon_state = "borderfloorcorner2_white"

/obj/floor_decal/borderfloorwhite/full
	icon_state = "borderfloorfull_white"

/obj/floor_decal/borderfloorwhite/cee
	icon_state = "borderfloorcee_white"

/obj/floor_decal/steeldecal
	name = "steel decal"
	icon_state = "steel_decals1"
	color = COLOR_GUNMETAL

/obj/floor_decal/steeldecal/steel_decals1
	icon_state = "steel_decals1"

/obj/floor_decal/steeldecal/steel_decals2
	icon_state = "steel_decals2"

/obj/floor_decal/steeldecal/steel_decals3
	icon_state = "steel_decals3"

/obj/floor_decal/steeldecal/steel_decals4
	icon_state = "steel_decals4"

/obj/floor_decal/steeldecal/steel_decals6
	icon_state = "steel_decals6"

/obj/floor_decal/steeldecal/steel_decals7
	icon_state = "steel_decals7"

/obj/floor_decal/steeldecal/steel_decals8
	icon_state = "steel_decals8"

/obj/floor_decal/steeldecal/steel_decals9
	icon_state = "steel_decals9"

/obj/floor_decal/steeldecal/steel_decals10
	icon_state = "steel_decals10"

/obj/floor_decal/steeldecal/steel_decals_central1
	icon_state = "steel_decals_central1"

/obj/floor_decal/steeldecal/steel_decals_central2
	icon_state = "steel_decals_central2"

/obj/floor_decal/steeldecal/steel_decals_central3
	icon_state = "steel_decals_central3"

/obj/floor_decal/steeldecal/steel_decals_central4
	icon_state = "steel_decals_central4"

/obj/floor_decal/steeldecal/steel_decals_central5
	icon_state = "steel_decals_central5"

/obj/floor_decal/steeldecal/steel_decals_central6
	icon_state = "steel_decals_central6"

/obj/floor_decal/steeldecal/steel_decals_central7
	icon_state = "steel_decals_central7"

/obj/floor_decal/techfloor
	name = "techfloor edges"
	icon_state = "techfloor_edges"

/obj/floor_decal/techfloor/corner
	name = "techfloor corner"
	icon_state = "techfloor_corners"

/obj/floor_decal/techfloor/orange
	name = "techfloor edges"
	icon_state = "techfloororange_edges"

/obj/floor_decal/techfloor/orange/corner
	name = "techfloor corner"
	icon_state = "techfloororange_corners"

/obj/floor_decal/techfloor/hole
	name = "hole left"
	icon_state = "techfloor_hole_left"

/obj/floor_decal/techfloor/hole/right
	name = "hole right"
	icon_state = "techfloor_hole_right"

/obj/floor_decal/stoneborder
	name = "stone border"
	icon_state = "stoneborder"

/obj/floor_decal/stoneborder/corner
	icon_state = "stoneborder_c"


/obj/effect/floor_decal/newcorner
	icon = 'icons/turf/flooring/misc2.dmi'
	layer = 2.03

/obj/effect/floor_decal/newcorner/red
	icon_state = "red"
/obj/effect/floor_decal/newcorner/red/quarter
	icon_state = "red-quarter"
/obj/effect/floor_decal/newcorner/red/corner
	icon_state = "red-corner"
/obj/effect/floor_decal/newcorner/red/diagonal
	icon_state = "red-diagonal"
/obj/effect/floor_decal/newcorner/red/solid
	icon_state = "redsolid"

/obj/effect/floor_decal/newcorner/blue
	icon_state = "blue"
/obj/effect/floor_decal/newcorner/blue/quarter
	icon_state = "blue-quarter"
/obj/effect/floor_decal/newcorner/blue/corner
	icon_state = "blue-corner"
/obj/effect/floor_decal/newcorner/blue/diagonal
	icon_state = "blue-diagonal"
/obj/effect/floor_decal/newcorner/blue/solid
	icon_state = "bluesolid"

/obj/effect/floor_decal/newcorner/green
	icon_state = "green"
/obj/effect/floor_decal/newcorner/green/quarter
	icon_state = "green-quarter"
/obj/effect/floor_decal/newcorner/green/corner
	icon_state = "green-corner"
/obj/effect/floor_decal/newcorner/green/diagonal
	icon_state = "green-diagonal"
/obj/effect/floor_decal/newcorner/green/solid
	icon_state = "greensolid"

/obj/effect/floor_decal/newcorner/grey
	icon_state = "grey"
/obj/effect/floor_decal/newcorner/grey/quarter
	icon_state = "grey-quarter"
/obj/effect/floor_decal/newcorner/grey/corner
	icon_state = "grey-corner"
/obj/effect/floor_decal/newcorner/grey/diagonal
	icon_state = "grey-diagonal"
/obj/effect/floor_decal/newcorner/grey/solid
	icon_state = "greysolid"

/obj/effect/floor_decal/newcorner/yellow
	icon_state = "yellow"
/obj/effect/floor_decal/newcorner/yellow/quarter
	icon_state = "yellow-quarter"
/obj/effect/floor_decal/newcorner/yellow/corner
	icon_state = "yellow-corner"
/obj/effect/floor_decal/newcorner/yellow/diagonal
	icon_state = "yellow-diagonal"
/obj/effect/floor_decal/newcorner/yellow/solid
	icon_state = "yellowsolid"

/obj/effect/floor_decal/newcorner/purple
	icon_state = "purple"
/obj/effect/floor_decal/newcorner/purple/quarter
	icon_state = "purple-quarter"
/obj/effect/floor_decal/newcorner/purple/corner
	icon_state = "purple-corner"
/obj/effect/floor_decal/newcorner/purple/diagonal
	icon_state = "purple-diagonal"
/obj/effect/floor_decal/newcorner/purple/solid
	icon_state = "purplesolid"

/obj/effect/floor_decal/newcorner/teal
	icon_state = "teal"
/obj/effect/floor_decal/newcorner/teal/quarter
	icon_state = "teal-quarter"
/obj/effect/floor_decal/newcorner/teal/corner
	icon_state = "teal-corner"
/obj/effect/floor_decal/newcorner/teal/diagonal
	icon_state = "teal-diagonal"
/obj/effect/floor_decal/newcorner/teal/solid
	icon_state = "tealsolid"

/obj/effect/floor_decal/newcorner/white
	icon_state = "white"
/obj/effect/floor_decal/newcorner/white/quarter
	icon_state = "white-quarter"
/obj/effect/floor_decal/newcorner/white/corner
	icon_state = "white-corner"
/obj/effect/floor_decal/newcorner/white/diagonal
	icon_state = "white-diagonal"
/obj/effect/floor_decal/newcorner/white/solid
	icon_state = "whitesolid"

/obj/effect/floor_decal/newcorner/whitegreen
	icon_state = "wgreen"
/obj/effect/floor_decal/newcorner/whitegreen/quarter
	icon_state = "wgreen-quarter"
/obj/effect/floor_decal/newcorner/whitegreen/corner
	icon_state = "wgreen-corner"
/obj/effect/floor_decal/newcorner/whitegreen/diagonal
	icon_state = "wgreen-diagonal"
/obj/effect/floor_decal/newcorner/whitegreen/solid
	icon_state = "wgreensolid"

/obj/effect/floor_decal/newcorner/black
	icon_state = "black"
/obj/effect/floor_decal/newcorner/black/quarter
	icon_state = "black-quarter"
/obj/effect/floor_decal/newcorner/black/corner
	icon_state = "black-corner"
/obj/effect/floor_decal/newcorner/black/diagonal
	icon_state = "black-diagonal"
/obj/effect/floor_decal/newcorner/black/solid
	icon_state = "blacksolid"

/obj/effect/floor_decal/newcorner/plating
	icon_state = "plating"
/obj/effect/floor_decal/newcorner/plating/quarter
	icon_state = "plating-quarter"
/obj/effect/floor_decal/newcorner/plating/corner
	icon_state = "plating-corner"
/obj/effect/floor_decal/newcorner/plating/diagonal
	icon_state = "plating-diagonal"

/obj/effect/floor_decal/newcorner/polar
	icon_state = "polar"
/obj/effect/floor_decal/newcorner/polar/quarter
	icon_state = "polar-quarter"
/obj/effect/floor_decal/newcorner/polar/corner
	icon_state = "polar-corner"

/obj/effect/floor_decal/newcorner/reinforced
	icon_state = "reinforced"
/obj/effect/floor_decal/newcorner/reinforced/corner
	icon_state = "rcorner"

/obj/effect/floor_decal/newcorner/train
	icon_state = "train"
/obj/effect/floor_decal/newcorner/train/corner
	icon_state = "train_c"

/obj/effect/floor_decal/newcorner/train2
	icon_state = "train2"
/obj/effect/floor_decal/newcorner/train2/corner
	icon_state = "train2_c"

/obj/effect/floor_decal/newcorner/shaft
	icon_state = "shaftplating"
/obj/effect/floor_decal/newcorner/shaft/quarter
	icon_state = "shaftplating-quarter"
/obj/effect/floor_decal/newcorner/shaft/corner
	icon_state = "shaftplating-corner"
/obj/effect/floor_decal/newcorner/shaft/diagonal
	icon_state = "shaftplating-diagonal"

/obj/effect/floor_decal/newcorner/step
	icon_state = "step"
/obj/effect/floor_decal/newcorner/step_i
	icon_state = "step_i"

/obj/effect/floor_decal/newcorner/nbar
	icon_state = "nbar"
/obj/effect/floor_decal/newcorner/nbar/corner
	icon_state = "nbar_corner"

/obj/effect/floor_decal/newcorner/dwood
	icon_state = "dwood"

/obj/effect/floor_decal/industrial/direction
	icon_state = "dir_white"
/obj/effect/floor_decal/industrial/direction/black
	icon_state = "dir_black"

/obj/effect/floor_decal/industrial/mark
	icon_state = "mark_white"
/obj/effect/floor_decal/industrial/mark/black
	icon_state = "mark_black"

/obj/effect/floor_decal/industrial/punctuation
	icon_state = "punctuation_white"
/obj/effect/floor_decal/industrial/punctuation/black
	icon_state = "punctuation_black"

/obj/effect/floor_decal/industrial/plaza
	icon_state = "plaza"
/obj/effect/floor_decal/industrial/plaza/box
	icon_state = "plazabox"
/obj/effect/floor_decal/warhammer/steel
	icon_state = "steel"

/obj/effect/floor_decal/warhammer/piping
	icon = 'icons/map_project/piping.dmi'
	icon_state = "trubas"

/obj/effect/floor_decal/warhammer/big_cables1
	icon = 'icons/map_project/piping.dmi'
	icon_state = "cable0"

/obj/effect/floor_decal/warhammer/big_cables2
	icon = 'icons/map_project/piping.dmi'
	icon_state = "cable1"

/obj/effect/floor_decal/warhammer/armory
	icon = 'icons/map_project/furniture_and_decor.dmi'
	icon_state = "arm1"
//////////////////////////////////
////////// NEW FLOORING //////////
//////////////////////////////////

// Even Newer
/obj/effect/floor_decal/warhammer/grimy
	name = "grimy floor"
	icon = 'icons/turf/flooring/floors.dmi' // It will break without this.
	icon_state = "grimy"

/obj/effect/floor_decal/warhammer/nf2
	name = "stone floor"
	icon = 'icons/turf/flooring/floors.dmi'
	icon_state = "nf2"

/obj/effect/floor_decal/warhammer/lfloorscorched1
	name = "scorched floor"
	icon = 'icons/turf/flooring/floors.dmi'
	icon_state = "lfloorscorched1"

// Slightly New
/obj/effect/floor_decal/warhammer/basalt0
	name = "volcanic floor"
	icon_state = "basalt0"

/obj/effect/floor_decal/warhammer/basalt1
	name = "volcanic floor"
	icon_state = "basalt1"

/obj/effect/floor_decal/warhammer/basalt3
	name = "volcanic floor"
	icon_state = "basalt3"

/obj/effect/floor_decal/warhammer/basalt9
	name = "volcanic floor"
	icon_state = "basalt9"

/obj/effect/floor_decal/warhammer/basalt10
	name = "volcanic floor"
	icon_state = "basalt10"

/obj/effect/floor_decal/warhammer/necro1
	name = "infestation"
	icon_state = "necro1"

/obj/effect/floor_decal/warhammer/necro2
	name = "infestation"
	icon = 'icons/map_project/eldritch/Flesh_Ground.dmi'
	icon_state = "flesh_floor-1"

/obj/effect/floor_decal/warhammer/necro3
	name = "infestation"
	icon = 'icons/map_project/eldritch/Flesh_Ground.dmi'
	icon_state = "flesh_floor-2"

/obj/effect/floor_decal/warhammer/necro4
	name = "infestation"
	icon = 'icons/map_project/eldritch/Flesh_Ground.dmi'
	icon_state = "flesh_floor-3"

/obj/effect/floor_decal/warhammer/oldsmoothdirt
	name = "dirt floor"
	icon_state = "oldsmoothdirt"

/obj/effect/floor_decal/warhammer/tunneldirty
	name = "tunnel floor"
	icon_state = "tunneldirty"

/obj/effect/floor_decal/warhammer/tunnelchess
	name = "tunnel floor"
	icon_state = "tunnelchess"

/obj/effect/floor_decal/warhammer/carpetn00
	name = "carpet floor"
	icon_state = "n00"

/obj/effect/floor_decal/warhammer/surgery2
	name = "surgery floor"
	icon_state = "surgery2"

/obj/effect/floor_decal/warhammer/brothel
	name = "stone floor"
	icon_state = "brothel"

/obj/effect/floor_decal/warhammer/clockwork
	name = "alien floor"
	icon_state = "clockwork"

//////////////////////////////////
//////// REGULAR FLOORING ////////
//////////////////////////////////

/obj/effect/floor_decal/warhammer/aesculapius
	icon_state = "aesculapius"
/obj/effect/floor_decal/warhammer/aesculapius/mem
	icon_state = "mem"
/obj/effect/floor_decal/warhammer/aesculapius/mento
	icon_state = "mento"
/obj/effect/floor_decal/warhammer/aesculapius/mori
	icon_state = "mori"

/obj/effect/floor_decal/warhammer/plating
	icon_state = "platingfull"

/obj/effect/floor_decal/warhammer/plate
	icon_state = "plate"

/obj/effect/floor_decal/warhammer/barnew
	icon_state = "barnew"

/obj/effect/floor_decal/warhammer/splate
	icon_state = "shaftplating"

/obj/effect/floor_decal/warhammer/checkers
	icon_state = "checkers1"

/obj/effect/floor_decal/warhammer/checkers/two
	icon_state = "checkers2"

/obj/effect/floor_decal/warhammer/rectangles
	icon_state = "rectangles1"


/obj/effect/floor_decal/warhammer/rectangles/two
	icon_state = "rectangles2"

/obj/effect/floor_decal/warhammer/brick
	icon_state = "brick1"

/obj/effect/floor_decal/warhammer/brick/two
	icon_state = "brick2"

/obj/effect/floor_decal/warhammer/metal
	icon_state = "metal1"

/obj/effect/floor_decal/warhammer/metal/two
	icon_state = "metal2"

/obj/effect/floor_decal/warhammer/metal/three
	icon_state = "metal3"

/obj/effect/floor_decal/warhammer/metal/four
	icon_state = "metal4"

/obj/effect/floor_decal/warhammer/metal/five
	icon_state = "metal5"

/obj/effect/floor_decal/warhammer/metal/six
	icon_state = "metal6"

/obj/effect/floor_decal/warhammer/metal/seven
	icon_state = "metal7"

/obj/effect/floor_decal/warhammer/metal/eight
	icon_state = "metal8"

/obj/effect/floor_decal/warhammer/metal/nine
	icon_state = "metal9"

/obj/effect/floor_decal/warhammer/metal/ten
	icon_state = "metal10"

/obj/effect/floor_decal/warhammer/metal/metal_wall
	name = "metal wall"
	icon_state = "2"


/obj/effect/floor_decal/newcorner/stone
	icon = 'icons/turf/flooring/plating.dmi'
	icon_state = "sborder1"

/obj/effect/floor_decal/newcorner/stone/corner
	icon = 'icons/turf/flooring/plating.dmi'
	icon_state = "sborder2"

/obj/effect/floor_decal/newcorner/caveramp
	icon = 'icons/turf/flooring/plating.dmi'
	icon_state = "caveramp"

/obj/effect/floor_decal/newcorner/grass
	icon = 'icons/map_project/furniture_and_decor.dmi'
	icon_state = "grass1"

/obj/effect/floor_decal/newcorner/trench_flooring
	icon = 'icons/turf/flooring/plating.dmi'
	icon_state = "trench_flooring"

/obj/effect/floor_decal/newcorner/mine_walls
	icon = 'icons/turf/walls.dmi'
	icon_state = "2"

/obj/effect/floor_decal/newcorner/rails
	icon = 'icons/map_project/furniture_and_decor.dmi'
	icon_state = "rail"
	color = "grey" // Else it looks too shining and does not fit

/obj/effect/floor_decal/newcorner/crater_big
	icon = 'icons/turf/trenches_turfs.dmi'
	icon_state = "l1"

/obj/effect/floor_decal/newcorner/crater_small
	icon = 'icons/turf/trenches_turfs.dmi'
	icon_state = "crater"

/obj/effect/floor_decal/newcorner/entrace
	icon = 'icons/map_project/gate.dmi'
	icon_state = "entrance"

/obj/effect/floor_decal/newcorner/brokenwood
	icon = 'icons/turf/flooring/wood.dmi'
	icon_state = "wood_broken0"
