// Declaración de la faccion
#define FACTION_NATO "Galactic Federation"
#define PREFIX_NATO list("NATO")

/datum/faction/nato
	name = FACTION_NATO
	parent_faction = /datum/faction/solgov
	prefixes = PREFIX_NATO
	color = "#444e5f"

/obj/structure/closet/crate/secure/nato
	desc = "A secure gear crate. It has NATO emblems on it."
	name = "nato gear crate"
	icon = 'icons/hispania/obj/crates.dmi'
	icon_state = "natocrate"
	var/use_easter_icon = FALSE

/obj/structure/closet/crate/secure/nato/update_icon_state()
	if(opened && prob(25))
		use_easter_icon = TRUE
	else
		use_easter_icon = FALSE

	if(use_easter_icon)
		icon_state = "natocrateopen_easter"
	else
		icon_state = "[initial(icon_state)][opened ? "open" : ""]"

/datum/supply_pack/nato
	category = "NATO Catalog"
	crate_name = "NATO Crate"
	crate_type = /obj/structure/closet/crate/secure/nato
	name = "NATO Crate"
	faction_locked = TRUE
	faction = /datum/faction/nato
	faction_discount = 0

/datum/supply_pack/nato/armor_l
	name = "X-10 Light Armor Pack"
	crate_name = "X-10 Light Armor Crate"
	desc = "One set of Lanchester Manufacturing-manufactured X-10 armor, sold at a discount to the Galactic Federation due to a recent contract."
	cost = 1500
	contains = list(/obj/item/clothing/suit/armor/vest/marine/nato,
	/obj/item/clothing/head/helmet/bulletproof/x11/nato
	)

/datum/supply_pack/nato/armor_m
	name = "X-11 Medium Armor Pack"
	crate_name = "X-11 Medium Armor Crate"
	desc = "One set of Lanchester Manufacturing-manufactured X-11 armor, sold at a discount to the Galactic Federation due to a recent contract."
	cost = 3000
	contains = list(/obj/item/clothing/suit/armor/vest/marine/medium/nato,
	/obj/item/clothing/head/helmet/bulletproof/x11/nato
	)

/*
/datum/supply_pack/nato/armor_h
	name = "X-12 Heavy Armor Pack"
	crate_name = "X-12 Heavy Armor Crate"
	desc = "One set of Lanchester Manufacturing-manufactured X-12 armor, sold at a discount to the Galactic Federation due to a recent contract."
	cost = 1250
	contains = list(/obj/item/clothing/suit/armor/vest/marine/heavy/nato)
*/

/datum/supply_pack/nato/guns_enforcer
	name = "Enforcer Pistol"
	crate_name = "Enforcer Weapon Crate"
	desc = "A simple NATO Issued enforcer pistol."
	cost = 1000
	contains = list(/obj/item/gun/ballistic/automatic/pistol/m1911/enforcer)
	faction_discount = 20
	faction_locked = FALSE

/datum/supply_pack/nato/guns_derringer
	name = "Koi Revolver"
	crate_name = "Koi Revolver Weapon Crate"
	desc = "The mythical Koi Revolver, chambered in .357"
	cost = 1500
	contains = list(/obj/item/gun/ballistic/derringer/traitor/nato)
	faction_discount = 20
	faction_locked = FALSE

/datum/supply_pack/nato/guns_vector
	name = "Vector SMG"
	crate_name = "Vector SMG Weapon Crate"
	desc = "A basic NATO Issued SMG for close quarter combat"
	cost = 3000
	contains = list(/obj/item/gun/ballistic/automatic/smg/vector/nato_vector)
	faction_discount = 20
	faction_locked = FALSE


/datum/supply_pack/nato/guns_assault
	name = "P16 Weapon"
	crate_name = "P16 Weapon Crate"
	desc = "A singular P16 Assault Rifle."
	cost = 5000
	contains = list(/obj/item/gun/ballistic/automatic/assualt/p16/nato_p16)
	faction_discount = 20
	faction_locked = FALSE

/datum/supply_pack/nato/guns_marksman
	name = "CM16 Weapon"
	crate_name = "CM16 Weapon Crate"
	desc = "A singular CM16 Marksman Rifle."
	cost = 4500
	contains = list(/obj/item/gun/ballistic/automatic/assualt/p16/nato_cm16)
	faction_discount = 20
	faction_locked = FALSE

/datum/supply_pack/nato/guns_shotgun
	name = "CM15 Weapon"
	crate_name = "CM15 Weapon Crate"
	desc = "A singular CM15 Combat Shotgun."
	cost = 4000
	contains = list(/obj/item/gun/ballistic/shotgun/automatic/bulldog/nato)
	faction_discount = 20
	faction_locked = FALSE

/datum/supply_pack/nato/guns_sniper
	name = "Ekho Weapon Pack"
	crate_name = "Ekho Weapon Crate"
	desc = "A singular Ekho Sniper Rifle."
	cost = 4500
	contains = list(/obj/item/gun/ballistic/automatic/sniper_rifle/ekho)
	faction_discount = 20
	faction_locked = FALSE

/*
/datum/supply_pack/nato/hardsuit_basic
	name = "NATO Base Hardsuit"
	crate_name = "NATO Base Hardsuit Crate"
	desc = "A singular Basic NATO Hardsuits."
	cost = 2000
	contains = list(/obj/item/clothing/suit/space/hardsuit/natonavy)

/datum/supply_pack/nato/hardsuit_advanced
	name = "NATO Advanced Hardsuit"
	crate_name = "NATO Advanced Hardsuit Crate"
	desc = "A singular Unit of an Advanced NATO Hardsuit."
	cost = 3500
	contains = list(/obj/item/clothing/suit/space/hardsuit/natonavy/elite)
*/


/datum/supply_pack/nato/pistol_ammo
	name = "NATO Enforcer AMMO Pack"
	crate_name = "NATO Enforcer AMMO Crate"
	desc = "A set of 1 Enforcer Magazines."
	cost = 210
	contains = list(/obj/item/ammo_box/magazine/m45/nato_enforcer)
	faction_discount = 20
	faction_locked = FALSE

/datum/supply_pack/nato/revolver_ammo
	name = "NATO Koi AMMO Pack"
	crate_name = "NATO Koi AMMO Crate"
	desc = "A set of 1 Koi Magazines."
	cost = 255
	contains = list(/obj/item/ammo_box/a357)
	faction_discount = 20
	faction_locked = FALSE

/datum/supply_pack/nato/smg_ammo
	name = "NATO Vector AMMO Pack"
	crate_name = "NATO Vector AMMO Crate"
	desc = "A set of 1 Vector Magazines."
	cost = 300
	contains = list(/obj/item/ammo_box/magazine/smgm9mm)
	faction_discount = 20
	faction_locked = FALSE

/datum/supply_pack/nato/p16_ammo
	name = "NATO P16 AMMO Pack"
	crate_name = "NATO P16 AMMO Crate"
	desc = "A set of 1 P16/CM-16 Magazines."
	cost = 300
	contains = list(/obj/item/ammo_box/magazine/p16)
	faction_discount = 20
	faction_locked = FALSE

/datum/supply_pack/nato/cm15_ammo
	name = "NATO CM15 AMMO Pack"
	crate_name = "NATO CM15 AMMO Crate"
	desc = "A set of 1 CM-15 Magazines."
	cost = 750
	contains = list(/obj/item/ammo_box/magazine/cm15_12g)
	faction_discount = 20
	faction_locked = FALSE

/datum/supply_pack/nato/ekho_ammo
	name = "NATO Ekho AMMO Pack"
	crate_name = "NATO Ekho AMMO Crate"
	desc = "A set of 1 Ekho Magazines."
	cost = 850
	contains = list(/obj/item/ammo_box/magazine/sniper_rounds/nato_ekho)
	faction_discount = 20
	faction_locked = FALSE

/datum/supply_pack/nato/basic_clothes
	name = "NATO General Uniforms"
	crate_name = "NATO General Uniforms Crate"
	desc = "A set of 3 uniforms for each low ranking NATO personnel."
	cost = 150
	contains = list(/obj/item/clothing/under/natonavy,
	/obj/item/clothing/under/natonavy,
	/obj/item/clothing/under/natonavy,
	/obj/item/clothing/under/natonavy/formed,
	/obj/item/clothing/under/natonavy/formed,
	/obj/item/clothing/under/natonavy/formed,
	/obj/item/clothing/under/natonavy/mp,
	/obj/item/clothing/under/natonavy/mp,
	/obj/item/clothing/under/natonavy/mp,
	/obj/item/clothing/head/beret/sec/nato/cap,
	/obj/item/clothing/head/beret/sec/nato/cap,
	/obj/item/clothing/head/beret/sec/nato/cap,
	/obj/item/clothing/head/beret/sec/nato/cap,
	/obj/item/clothing/head/beret/sec/nato/cap,
	/obj/item/clothing/head/beret/sec/nato/cap
)

/datum/supply_pack/nato/adv_clothes
	name = "NATO Commanding Uniforms"
	crate_name = "NATO Commanding Uniforms Crate"
	desc = "A set of 3 uniforms for each high ranking NATO personnel."
	cost = 550
	contains = list(/obj/item/clothing/under/natonavy/officer,
	/obj/item/clothing/under/natonavy/officer,
	/obj/item/clothing/under/natonavy/officer,
	/obj/item/clothing/under/natonavy/officer_higher,
	/obj/item/clothing/under/natonavy/officer_higher,
	/obj/item/clothing/under/natonavy/officer_higher,
	/obj/item/clothing/under/natonavy/admiral,
	/obj/item/clothing/head/beret/sec/nato,
	/obj/item/clothing/head/beret/sec/nato,
	/obj/item/clothing/head/beret/sec/nato,
	/obj/item/clothing/head/beret/sec/nato/higher,
	/obj/item/clothing/head/beret/sec/nato/higher,
	/obj/item/clothing/head/beret/sec/nato/higher,
	/obj/item/clothing/head/beret/sec/nato/higher
)

/datum/supply_pack/nato/misc_clothes
	name = "NATO Clothing Utils"
	crate_name = "NATO Clothing Utils Crate"
	desc = "A set of utilities worth for 1 NATO member per crate"
	cost = 250
	contains = list(/obj/item/radio/headset/nato,
	/obj/item/radio/headset/nato/officer,
	/obj/item/clothing/glasses/hud/security/nato,
	/obj/item/clothing/glasses/hud/security/sunglasses/nato,
	/obj/item/clothing/mask/gas/sechailer/cloaker,
	/obj/item/clothing/mask/gas/sechailer,
	/obj/item/encryptionkey/solgov,
	/obj/item/encryptionkey/heads/captain
)

/* Los admins no son funny.
/mob/living/simple_animal/cow/nato
	name = "TuMadre"
	desc = "No puedo esperar a que en discord me digan que hacemos contrabando para decirles que hacemos contrabando de tumadre."
	speak = list("moo?","moo","MOOOOOO", "moo?","moo","MOOOOOO", "moo?","moo","MOOOOOO", "moo?","moo","MOOOOOO", "moo?","moo","MOOOOOO",
	"moo?","moo","MOOOOOO", "moo?","moo","MOOOOOO", "moo?","moo","MOOOOOO", "moo?","moo","MOOOOOO", "moo?","moo","MOOOOOO",
	"So, the thing I keep thinking about is... Was it worth it to be happy for a little bit even though it ended up sad?",
	"moo?","moo","MOOOOOO", "moo?","moo","MOOOOOO", "moo?","moo","MOOOOOO", "moo?","moo","MOOOOOO", "moo?","moo","MOOOOOO")

/datum/supply_pack/nato/misc_clothes
	crate_name = "NATO Contraband Crate"
	name = "NATO Contraband"
	desc = "Just some imported goods from the galactic federation, shhh..."
	cost = 250
	contains = list(/mob/living/simple_animal/cow/nato)

*/
