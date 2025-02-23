/obj/item/instrument
	icon = 'icons/obj/musician.dmi'
	throwforce = 0
	throw_speed = 3
	throw_range = 6
	force = 20

/obj/item/instrument/guitar
	name = "guitar"
	desc = "An antique musical instrument made of wood, originating from Terra.	It has six metal strings of different girth and tension. When moved, they vibrate and the waves resonate in the guitar's open body, producing sounds. Obtained notes can be altered by pressing the strings to the neck, affecting the vibration's frequency."
	icon = 'icons/obj/musician.dmi'
	icon_state = "guitar"

/obj/item/instrument/guitar/attack_self(mob/user as mob)
	user.visible_message(SPAN_NOTICE("<b>\The [user]</b> strums [src]!"),SPAN_NOTICE("You strum [src]!"))
