/obj/item/device/boombox
	name = "Audioslate Player"
	icon = 'icons/obj/boombox.dmi'
	icon_state = "boombox"
	desc = "You should insert some tapes into this thing."
	w_class = ITEM_SIZE_GARGANTUAN

	var/obj/item/device/cassette/current_tape // The tape currently inside the boombox.
	var/is_playing = FALSE // Tracks if music is playing
	var/last_song_played = "" // Tracks the last played song file
	var/datum/sound_token/sound_token // Token to manage the currently playing sound
	var/sound_id // Unique ID for this boombox's sound
	var/working_sound // Current working sound file for playback

/obj/item/device/boombox/attack_hand(mob/user as mob)
	if (user.get_inactive_hand() == src)
		if (current_tape)
			to_chat(user, "You remove the tape from [src].")
			playsound(get_turf(src), 'sound/machines/bomclick.ogg', 30, 1)
			current_tape.loc = user.loc
			current_tape = null
			StopPlayback() // Stop playback safely
			return TRUE
	return ..()

/obj/item/device/boombox/use_tool(obj/item/I, mob/living/user, list/click_params)
	if (istype(I, /obj/item/device/cassette))
		if (!current_tape && user.unEquip(I)) // Add the tape if there isn't one already.
			I.forceMove(src)
			current_tape = I
			to_chat(user, "You insert [I.name] into [src].")
			playsound(get_turf(src), 'sound/machines/bomclick.ogg', 30, 1)
			return TRUE
		else
			to_chat(user, "[src] already has a tape installed.")
			return TRUE
	return ..()

/obj/item/device/boombox/attack_self(mob/living/carbon/human/user)
	if (current_tape) // Check if there's a tape inserted
		if (is_playing) // If music is already playing
			to_chat(user, "You stop the [src].")
			StopPlayback() // Stop playback
		else // If no music is playing
			if (current_tape.sound_file == last_song_played)
				to_chat(user, "[src] is already playing this song!")
			else
				to_chat(user, "You start playing [current_tape.name] in [src].")
				StartPlayback(current_tape.sound_file) // Play the new song
	else
		to_chat(user, "No tape is inserted into [src].") // Handle case where no tape is inserted

/obj/item/device/boombox/proc/StartPlayback(sound_file)
	StopPlayback() // Stop any currently playing sound

	sound_id = "[src]_[sequential_id(/obj/item/device/boombox)]"
	working_sound = sound_file

	if (!sound_token)
		sound_token = GLOB.sound_player.PlayLoopingSound(src, sound_id, working_sound, volume = 40) // Play the looping sound
		sound_token.SetVolume(40) // Set initial volume

	is_playing = TRUE
	last_song_played = sound_file

/obj/item/device/boombox/proc/StopPlayback()
	if (sound_token)
		QDEL_NULL(sound_token) // Safely delete the sound token to stop playback
		sound_token = null

	is_playing = FALSE
	last_song_played = ""



/obj/item/device/cassette
	name = "Audioslate Tape"
	desc = "A tape containing two sides of music, each with its own song."
	icon = 'icons/obj/cassette.dmi'
	icon_state = "cassette_0"
	w_class = ITEM_SIZE_TINY

	var/aside
	var/bside
	var/sound_file

/obj/item/device/cassette/attack_self(mob/user as mob)
	if (sound_file == aside)
		sound_file = bside
		to_chat(user, "You switched the tape to the B side.")
		playsound(get_turf(src), 'sound/machines/bomclick.ogg', 40, 1)
	else
		sound_file = aside
		to_chat(user, "You switched the tape to the A side.")
		playsound(get_turf(src), 'sound/machines/bomclick.ogg', 40, 1)
		return TRUE
	return ..()

/obj/item/device/cassette/New()
	..()
	icon_state = "cassette_[rand(0,12)]"

/obj/item/device/cassette/fart
	sound_file = 'sound/newmusic/fart.ogg'
	name = "The Great Gatsby"
	aside = 'sound/newmusic/fart.ogg'
	bside = 'sound/newmusic/fart.ogg'

/obj/item/device/cassette/ambient
	sound_file = 'sound/newmusic/General_Ambient.ogg'
	name = "Imperial Ambiance #1"
	aside = 'sound/newmusic/General_Ambient.ogg'
	bside = 'sound/newmusic/General_Ambient2.ogg'

/obj/item/device/cassette/ambient2
	sound_file = 'sound/newmusic/General_Ambient3.ogg'
	name = "Imperial Ambiance #2"
	aside = 'sound/newmusic/General_Ambient3.ogg'
	bside = 'sound/newmusic/Hab.ogg'

/obj/item/device/cassette/ambient3
	sound_file = 'sound/newmusic/Outpost1.ogg'
	name = "Imperial Ambiance #3"
	aside = 'sound/newmusic/Outpost1.ogg'
	bside = 'sound/newmusic/Chapel1.ogg'

/obj/item/device/cassette/combat1
	sound_file = 'sound/newmusic/TAPE-DUEL.ogg'
	name = "Rockin Death Tunes"
	aside = 'sound/newmusic/TAPE-DUEL.ogg'
	bside = 'sound/newmusic/TUPE-ORKS1.ogg'

/obj/item/device/cassette/sombre
	sound_file = 'sound/newmusic/TUPE-SOMBRE1.ogg'
	name = "Sombre Tunes"
	aside = 'sound/newmusic/TUPE-SOMBRE1.ogg'
	bside = 'sound/newmusic/TUPE-SOMBRE2.ogg'

/obj/item/device/cassette/western1
	sound_file = 'sound/newmusic/TUPE-WESTERN1.ogg'
	name = "Wild West Tunes"
	aside = 'sound/newmusic/TUPE-WESTERN1.ogg'
	bside = 'sound/newmusic/TUPE-BUILDIN1.ogg'

/obj/item/device/cassette/forbidden1
	sound_file = 'sound/newmusic/TAPE-forbidden.ogg'
	name = "Forbidden Tunes"
	aside = 'sound/newmusic/TAPE-forbidden.ogg'
	bside = 'sound/newmusic/TAPE-unknownsoldier.ogg'

/*


/obj/item/device/cassette
	name = "cassette tape"
	desc = "A tape smuggled in from somewhere in the outside world. Contains some bumping tunes on it."
	icon = 'icons/obj/cassette.dmi'
	icon_state = "cassette_0"
	var/sound/sound_inside
	w_class = ITEM_SIZE_TINY
	var/uploader_idiot
	var/current_side = 1
	var/sound/aside
	var/sound/bside

/obj/item/device/cassette/New()
	icon_state = "cassette_[rand(0,12)]"

/obj/item/device/cassette/fart/New()
	..()
	name = "The Great Gatsby"
	aside = pick('sound/newmusic/fart.ogg')
	bside = pick('sound/newmusic/fart.ogg')
	sound_inside = aside


/obj/item/device/cassette/titansbane/New()
	..()
	name = "Titansbane - Cadia Stands"
	aside = pick('sound/newmusic/TAPE-TITANSBANE.ogg')
	bside = pick('sound/newmusic/TAPE-TITANSBANE.ogg')
	sound_inside = aside

/obj/item/device/cassette/unknownsoldier/New()
	..()
	name = "The Unknown Soldier"
	aside = pick('sound/newmusic/TAPE-unknownsoldier.ogg')
	bside = pick('sound/newmusic/TAPE-unknownsoldier.ogg')
	sound_inside = aside

/obj/item/device/cassette/daboss/New()
	..()
	name = "Da Boss"
	aside = pick('sound/newmusic/TAPE-DABOSS1.ogg')
	bside = pick('sound/newmusic/TAPE-DABOSS1.ogg')
	sound_inside = aside

/obj/item/device/cassette/inqlog1/New()
	..()
	name = "Inquisition Log 1"
	aside = pick('sound/newmusic/TAPE-INQLOG1.ogg')
	bside = pick('sound/newmusic/TAPE-INQLOG1.ogg')
	sound_inside = aside

/obj/item/device/cassette/brokensaint/New()
	..()
	name = "Broken Saint"
	aside = pick('sound/newmusic/TAPE-BROKENSAINT.ogg')
	bside = pick('sound/newmusic/TAPE-BROKENSAINT.ogg')
	sound_inside = aside

/obj/item/device/cassette/grimdark/New()
	..()
	name = "The Grimdark"
	aside = pick('sound/newmusic/TAPE-GRIMDARK1.ogg')
	bside = pick('sound/newmusic/TAPE-GRIMDARK1.ogg')
	sound_inside = aside

/obj/item/device/cassette/buildin/New()
	..()
	name = "Serf Music"
	aside = pick('sound/newmusic/TUPE-BUILDIN1.ogg')
	bside = pick('sound/newmusic/TUPE-BUILDIN1.ogg')
	sound_inside = aside

/obj/item/device/cassette/orks1/New()
	..()
	name = "Ork Jamma's"
	aside = pick('sound/newmusic/TUPE-ORKS1.ogg')
	bside = pick('sound/newmusic/TUPE-ORKS1.ogg')
	sound_inside = aside

/obj/item/device/cassette/church1/New()
	..()
	name = "Monastery Chants"
	aside = pick('sound/newmusic/TUPE-CHURCH1.ogg')
	bside = pick('sound/newmusic/TUPE-CHURCH1.ogg')
	sound_inside = aside

/obj/item/device/cassette/sombre1/New()
	..()
	name = "Sombre Song's A"
	aside = pick('sound/newmusic/TUPE-SOMBRE1.ogg')
	bside = pick('sound/newmusic/TUPE-SOMBRE1.ogg')
	sound_inside = aside

/obj/item/device/cassette/sombre2/New()
	..()
	name = "Sombre Song's B"
	aside = pick('sound/newmusic/TUPE-SOMBRE2.ogg')
	bside = pick('sound/newmusic/TUPE-SOMBRE2.ogg')
	sound_inside = aside

/obj/item/device/cassette/western1/New()
	..()
	name = "Western Stuff"
	aside = pick('sound/newmusic/TUPE-WESTERN1.ogg')
	bside = pick('sound/newmusic/TUPE-WESTERN1.ogg')
	sound_inside = aside

/obj/item/device/cassette/clockwork1/New()
	..()
	name = "Clockwork"
	aside = pick('sound/newmusic/TUPE-CLOCKWORK1.ogg')
	bside = pick('sound/newmusic/TUPE-CLOCKWORK1.ogg')
	sound_inside = aside

/obj/item/device/cassette/inn1/New()
	..()
	name = "Calm Tavern"
	aside = pick('sound/newmusic/Inn_Ambient.ogg')
	bside = pick('sound/newmusic/Inn_Ambient.ogg')
	sound_inside = aside

/obj/item/device/cassette/inn2/New()
	..()
	name = "Strange Music"
	aside = pick('sound/newmusic/TAPE-INNMED.ogg')
	bside = pick('sound/newmusic/TAPE-INNMED.ogg')
	sound_inside = aside

/obj/item/device/cassette/heresy1/New()
	..()
	name = "Heretical Tape"
	aside = pick('sound/newmusic/TAPE-forbidden.ogg')
	bside = pick('sound/newmusic/TAPE-forbidden.ogg')
	sound_inside = aside

/obj/item/device/cassette/inn3/New()
	..()
	name = "Totally Transcendent"
	aside = pick('sound/newmusic/TAPE-INNLOUD.ogg')
	bside = pick('sound/newmusic/TAPE-INNLOUD.ogg')
	sound_inside = aside

/obj/item/device/cassette/inn4/New()
	..()
	name = "Whirling In Rags"
	aside = pick('sound/newmusic/TAPE-INNCALM.ogg')
	bside = pick('sound/newmusic/TAPE-INNCALM.ogg')
	sound_inside = aside

/obj/item/device/cassette/duel/New()
	..()
	name = "Dueling Music"
	aside = pick('sound/newmusic/TAPE-DUEL.ogg')
	bside = pick('sound/newmusic/TAPE-DUEL.ogg')
	sound_inside = aside

/obj/item/device/cassette/demon/New()
	..()
	name = "Rip & Tear"
	aside = pick('sound/newmusic/TAPE-DEMON.ogg')
	bside = pick('sound/newmusic/TAPE-DEMON.ogg')
	sound_inside = aside

/obj/item/device/cassette/bold_brathas/New()
	..()
	name = "Boreale & Diomedes - Bold Brathas"
	desc = "A very rare imperial collector's edition cassette that only had over 100 copies produced due the expensive price of 9999.9 thrones, the song was performed by Apollo Diomedes and Indrick Boreale."
	aside = pick('icons/map_project/sounds/bold_brathas.ogg')
	bside = pick('icons/map_project/sounds/bold_brathas.ogg')
	sound_inside = aside
	sales_price = 20 // Very rare and expensive

/obj/item/device/cassette/dow_cmd_theme/New()
	..()
	name = "Jeremy Soule - Force Commander Theme"
	desc = "Where have you heard this before ? It sounds VERY familiar..."
	aside = pick('icons/map_project/sounds/dow_commander_theme.ogg')
	bside = pick('icons/map_project/sounds/dow_commander_theme.ogg')
	sound_inside = aside
	sales_price = 10 // Very rare and expensive

/obj/item/device/cassette/dow_spessmuhreen_theme/New()
	..()
	name = "Inon Zur - Space Marines Theme"
	desc = "Where have you heard this before ? It sounds VERY familiar..."
	aside = pick('icons/map_project/sounds/dow_spessmarine.ogg')
	bside = pick('icons/map_project/sounds/dow_spessmarine.ogg')
	sound_inside = aside
	sales_price = 10 // Very rare and expensive

/obj/item/device/cassette/the_forest_1/New()
    ..()
    name = "Gabe Castro - Cassette 1"
    desc = "Where have you heard this before ? It sounds VERY familiar..."
    aside = pick('icons/map_project/sounds/cassette_forest1.ogg')
    bside = pick('icons/map_project/sounds/cassette_forest1.ogg')
    sound_inside = aside
    sales_price = 10 // Very rare and expensive

/obj/item/device/cassette/the_forest2/New()
    ..()
    name = "Gabe Castro - Cassette 6"
    desc = "Where have you heard this before ? It sounds VERY familiar..."
    aside = pick('icons/map_project/sounds/cassette_forest6.ogg')
    bside = pick('icons/map_project/sounds/cassette_forest6.ogg')
    sound_inside = aside
    sales_price = 10 // Very rare and expensive

/obj/item/device/cassette/starcraft_1/New()
    ..()
    name = "Glenn Stafford - Terran Theme 1"
    desc = "You need to build additional supply depots."
    aside = pick('icons/map_project/sounds/starcraft_terran1.ogg')
    bside = pick('icons/map_project/sounds/starcraft_terran1.ogg')
    sound_inside = aside
    sales_price = 10 // Very rare and expensive

/obj/item/device/cassette/astra_militarum/New()
	..()
	name = "\"The Officio Prefectus-Approved Morale Boosting Chants\" volume two magn-o-tape"
	desc = "A second volume of the popular tape."
	aside = pick('sound/music/Astra_Militarum_Theme.ogg')
	bside = pick('sound/music/Bomber.ogg')
	sound_inside = aside

/obj/item/device/cassette/necron/New()
	..()
	name = "Strange Tape"
	desc = "A strange tape, this seems to have a drawing of a skull with growing green eyes on it. How odd."
	aside = pick('sound/music/Cryptek.ogg')
	bside = pick('sound/music/Necrons_Theme.ogg')
	sound_inside = aside

/obj/item/device/cassette/commissar/New()
	..()
	name = "Damaged Astra Militarum Tape."
	desc = "A damaged official Astra Militarum tape, this has the word \"COMMISSAR\" scrolled across the front."
	aside = pick('sound/music/Commissar.ogg')
	bside = pick('sound/music/Guardsman.ogg')
	sound_inside = aside

/obj/item/device/cassette/inquisitor/New()
	..()
	name = "Inquisitorial Morale Tapes."
	desc = "An official looking tape with the Inquisitorial Rosette on the front."
	aside = pick('sound/music/Inquisitor_Song1.ogg')
	bside = pick('sound/music/Inquisitor_Song2.ogg')
	sound_inside = aside

/obj/item/device/cassette/space_marine/New()
	..()
	name = "Adeptus Astartes Audioslates"
	desc = "An official looking tape with the winged skull and blade of the Adeptus Astartes."
	aside = pick('sound/music/Space_Marine_Standing.ogg')
	bside = pick('sound/music/Space_Marine_Dynamite.ogg')
	sound_inside = aside

/obj/item/device/cassette/space_marine_alt/New()
	..()
	name = "Odd Adeptus Astartes Audioslates"
	desc = "An official looking tape with the winged skull and blade of the Adeptus Astartes. This one looks different, somehow."
	aside = pick('sound/music/Space_Marine_Meme1.ogg')
	bside = pick('sound/music/Space_Marine_Meme2.ogg')
	sound_inside = aside

/obj/item/device/cassette/mechanicus_warchant/New()
	..()
	name = "Adeptus Mechanicus War-Chants"
	desc = "An official looking tape with the cog and skull of the Adeptus Mechanicus."
	aside = pick('sound/music/Mechanicus_War_Cant.ogg')
	bside = pick('sound/music/Mechanicus_Tune.ogg')
	sound_inside = aside

/obj/item/device/cassette/mechanicus_warchant_alt/New()
	..()
	name = "Damaged Adeptus Mechanicus War-Chants"
	desc = "An official looking tape with the cog and skull of the Adeptus Mechanicus. This tape is sparking, and seems damaged."
	aside = pick('sound/music/Mechanicus_Meme1.ogg')
	bside = pick('sound/music/Mechanicus_Meme2.ogg')
	sound_inside = aside

/obj/item/device/cassette/adepta_sororitas/New()
	..()
	name = "Adepta Sororitas Morale Tapes"
	desc = "An experiment in boosting morale of units with an attached Adeptua Sororitas unit."
	aside = pick('sound/music/Sororitas1.ogg')
	bside = pick('sound/music/Sororitas2.ogg')
	sound_inside = aside

/obj/item/device/cassette/astra_militarum_alt/New()
	..()
	name = "Astra Militarum Relaxation Tape."
	desc = "An official tape from the Astra Militarum, intended to promote calm and relaxation among Militarum personnel."
	aside = pick('sound/music/Imperial_Guard_Meme1.ogg')
	bside = pick('sound/music/Imperial_Guard_Meme2.ogg')
	sound_inside = aside

*/
