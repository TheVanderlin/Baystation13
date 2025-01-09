/obj/structure/closet/crate/med_crate/trauma
	name = "trauma crate"
	desc = "A crate with trauma equipment."
	closet_appearance = /singleton/closet_appearance/crate/medical/trauma

/obj/structure/closet/crate/med_crate/trauma/WillContain()
	return list(
		/obj/item/stack/medical/splint = 2,
		/obj/item/stack/medical/advanced/bruise_pack = 2,
		/obj/item/storage/pill_bottle/sugariron = 1,
		/obj/item/storage/pill_bottle/paracetamol = 1
		)

/obj/structure/closet/crate/med_crate/burn
	name = "burn crate"
	desc = "A crate with burn equipment."
	closet_appearance = /singleton/closet_appearance/crate/medical

/obj/structure/closet/crate/med_crate/burn/WillContain()
	return list(
		/obj/item/defibrillator/loaded,
		/obj/item/stack/medical/advanced/ointment = 2,
		/obj/item/storage/pill_bottle/tramadol = 1,
		/obj/item/storage/pill_bottle/spaceacillin
	)

/obj/structure/closet/crate/med_crate/oxyloss
	name = "low oxygen crate"
	desc = "A crate with low oxygen equipment."
	closet_appearance = /singleton/closet_appearance/crate/medical/oxygen

/obj/structure/closet/crate/med_crate/oxyloss/WillContain()
	return list(
		/obj/item/device/scanner/health = 2,
		/obj/item/storage/pill_bottle/dexalin = 1
	)
/obj/structure/closet/crate/med_crate/toxin
	name = "toxin crate"
	desc = "A crate with toxin equipment."
	closet_appearance = /singleton/closet_appearance/crate/medical/toxins

/obj/structure/closet/crate/med_crate/toxin/WillContain()
	return list(
		/obj/item/storage/firstaid/surgery,
		/obj/item/storage/pill_bottle/dylovene = 1
			)
