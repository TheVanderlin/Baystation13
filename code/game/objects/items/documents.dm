/obj/item/documents
	name = "secret documents"
	desc = "\"Top Secret\" documents."
	icon = 'icons/obj/bureaucracy.dmi'
	icon_state = "docs_generic"
	item_state = "paper"
	throwforce = 0
	w_class = ITEM_SIZE_TINY
	throw_range = 1
	var/description_antag

/obj/item/documents/examine(mob/user)
	. = ..()
	if(description_antag)
		to_chat(user, description_antag)

/obj/item/documents/nanotrasen
	name = "secret imperial documents"
	desc = "An Inquisitorial letter concerning Necron activity within the Ghoul Stars. It outlines dormant tomb worlds awakening and their potential threat to Imperial control."
	description_antag = "The letter reveals Necron awakenings are accelerating, with some planetary governors hiding evidence of tomb activity to avoid scrutiny."
	icon_state = "docs_verified"

/obj/item/documents/scg/verified
	name = "secret government documents"
	desc = "A Landsraad inquiry into the death of the previous Lord Trader, congratulating the new Lord Trader on their position but emphasizing the need to prove themselves through results."
	description_antag = "The document subtly accuses the new Lord Trader of foul play in their predecessor's death and hints at consequences if expectations are not met."
	icon_state = "docs_verified"

/obj/item/documents/scg/brains
	name = "secret medical documents"
	desc = "Classified medical data on a mysterious pathogen of unknown origin spreading through the subsector, including symptoms, infection vectors, and mortality rates."
	description_antag = "The pathogen appears unnatural, with veiled references to research stations in the Ghoul Stars possibly linked to its creation or spread."
	icon_state = "docs_verified"

/obj/item/documents/scg/red
	name = "red secret documents"
	desc = "An Inquisitorial letter to the Landsraad warning of Genestealer infestations spreading within rogue trader holdings and planetary territories in the Ghoul Stars."
	description_antag = "The document suggests certain factions within the Landsraad may be exploiting or harboring Genestealer cultists for personal gain, risking catastrophic consequences."
	icon_state = "docs_red"

/obj/item/documents/scg/blue
	name = "blue secret documents"
	desc = "A secret Landsraad document outlining a covert treaty with the Tau. While officially at war, both sides agree to avoid unnecessary conflict, resolving disputes through trade or duels."
	description_antag = "The treaty hints at Tau exploitation of Ghoul Stars resources, with the Landsraad tolerating it for mutual financial benefit."
	icon_state = "docs_blue"

/obj/item/documents/scgr
	name = "incriminating evidence"
	desc = "Confidential memos suggesting the Lord Trader is part of a secret cabal within the Landsraad, profiting from the sale of heretical artifacts from alien worlds."
	description_antag = "These memos contain incriminating evidence of the Lord Trader's involvement in trafficking xenos artifacts, potentially jeopardizing their standing(Let an admeme know you have this)."
	icon_state = "docs_verified"
