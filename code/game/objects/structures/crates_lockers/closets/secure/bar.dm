/obj/structure/closet/secure_closet/bar
	name = "booze closet"
	req_access = list(access_dauntless)
	closet_appearance = /singleton/closet_appearance/cabinet/secure

/obj/structure/closet/secure_closet/bar/WillContain()
	return list(/obj/item/reagent_containers/food/drinks/bottle/small/beer = 4)
