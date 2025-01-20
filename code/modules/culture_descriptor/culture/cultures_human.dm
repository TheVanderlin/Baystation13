/singleton/cultural_info/culture/generic
	name = CULTURE_OTHER
	description = "You are from one of the many small, relatively unknown cultures scattered across the galaxy."

/singleton/cultural_info/culture/human
	name = CULTURE_HUMAN
	description = "You are from one of various planetary cultures of mankind."
	language = LANGUAGE_HIGH_GOTHIC
	additional_langs = list(
		LANGUAGE_HIGH_GOTHIC,
		LANGUAGE_LOW_GOTHIC,
		LANGUAGE_SIGN
	)

/singleton/cultural_info/culture/human/imperial
	name = CULTURE_HUMAN_IMPERIAL
	description = "You hail from a distant region within the Imperium of Man. Raised either in one of its vast urban centers or in a more isolated, rural community, you have no doubt faced the grimdark terrors of the imperium itself. \
	Despite the vast chaos of the Imperium and its many billion worlds, you carry with you the essence of its countless cultures and their unique histories."

	economic_power = 1

/singleton/cultural_info/culture/human/other
	name = CULTURE_HUMAN_OTHER
	description = "Some people are from places no one has ever heard of or places too wild and fantastical to make it into Encyclopedia Galactica. You are one of these. "
	economic_power = 1
	additional_langs = list (LANGUAGE_HIGH_GOTHIC,
		LANGUAGE_LOW_GOTHIC,
		LANGUAGE_GUTTER,
		LANGUAGE_SIGN)

/singleton/cultural_info/culture/human/vatgrown/sanitize_name(name)
	return sanitizeName(name, allow_numbers=TRUE)

/singleton/cultural_info/culture/human/vatgrown/get_random_name(gender)
	// #defines so it's easier to read what's actually being generated
	#define LTR ascii2text(rand(65,90)) // A-Z
	#define NUM ascii2text(rand(48,57)) // 0-9
	#define FIRST capitalize(pick(gender == FEMALE ? GLOB.first_names_female : GLOB.first_names_male))
	#define NAME capitalize(pick(gender == FEMALE ? GLOB.first_names_female : GLOB.first_names_male)) + " " + capitalize(pick(GLOB.last_names))
	switch(rand(1,4))
		if(1) return NAME
		if(2) return "[LTR][LTR]-[FIRST]"
		if(3) return "[FIRST]-[NUM][NUM][NUM]"
		if(4) return "[NUM][NUM][NUM]-[FIRST]"
	. = 1 // Never executed, works around http://www.byond.com/forum/?post=2072419
	#undef LTR
	#undef NUM
	#undef FIRST
	#undef NAME
