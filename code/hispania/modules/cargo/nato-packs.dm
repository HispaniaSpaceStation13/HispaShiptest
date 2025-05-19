// Declaración de la faccion
#define FACTION_NATO "Galactic Federation"
#define PREFIX_NATO list("NATO")

/datum/faction/nato
	name = FACTION_NATO
	parent_faction = /datum/faction/solgov
	prefixes = PREFIX_NATO
	color = "#444e5f"

/datum/supply_pack/nato
	group = "NATO Catalog"
	crate_type = /obj/structure/closet/crate/secure/gear
	crate_name = "NATO Crate"
	faction_locked = TRUE
	faction = /datum/faction/nato
	faction_discount = 0


/datum/supply_pack/nato/armor_l
	name = "X-10 Light Armor Crate"
	desc = "One set of Lanchester Manufacturing-manufactured X-10 armor, sold at a discount to the Galactic Federation due to a recent contract."
	cost = 1250
	contains = list(/obj/item/clothing/suit/armor/vest/bulletproof,
					/obj/item/clothing/head/helmet/bulletproof/x11/clip,
					/obj/item/clothing/mask/gas/clip)

/datum/supply_pack/nato/armor_m
	name = "X-11 Medium Armor Crate"
	desc = "One set of Lanchester Manufacturing-manufactured X-11 armor, sold at a discount to the Galactic Federation due to a recent contract."
	cost = 1250
	contains = list(/obj/item/clothing/suit/armor/vest/bulletproof,
					/obj/item/clothing/head/helmet/bulletproof/x11/clip,
					/obj/item/clothing/mask/gas/clip)

/datum/supply_pack/nato/armor_h
	name = "X-12 Heavy Armor Crate"
	desc = "One set of Lanchester Manufacturing-manufactured X-12 armor, sold at a discount to the Galactic Federation due to a recent contract."
	cost = 1250
	contains = list(/obj/item/clothing/suit/armor/vest/bulletproof,
					/obj/item/clothing/head/helmet/bulletproof/x11/clip,
					/obj/item/clothing/mask/gas/clip)
