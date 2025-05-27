// Declaración de la faccion
#define FACTION_NATO "Galactic Federation"
#define PREFIX_NATO list("NATO")

/datum/faction/nato
	name = FACTION_NATO
	parent_faction = /datum/faction/solgov
	prefixes = PREFIX_NATO
	color = "#444e5f"

/datum/supply_pack/nato
	category = "NATO Catalog"
	crate_name = "NATO Crate"
	crate_type = /obj/structure/closet/crate/secure/gear
	name = "NATO Crate"
	faction_locked = TRUE
	faction = /datum/faction/nato

/datum/supply_pack/nato/armor_l
	name = "X-10 Light Armor Pack"
	crate_name = "X-10 Light Armor Crate"
	desc = "One set of Lanchester Manufacturing-manufactured X-10 armor, sold at a discount to the Galactic Federation due to a recent contract."
	cost = 1250
	contains = list(/obj/item/clothing/suit/armor/vest/marine/nato,
					/obj/item/clothing/suit/armor/vest/marine/nato,
					/obj/item/clothing/suit/armor/vest/marine/nato)

/datum/supply_pack/nato/armor_m
	name = "X-11 Medium Armor Pack"
	crate_name = "X-11 Medium Armor Crate"
	desc = "One set of Lanchester Manufacturing-manufactured X-11 armor, sold at a discount to the Galactic Federation due to a recent contract."
	cost = 1250
	contains = list(/obj/item/clothing/suit/armor/vest/marine/medium/nato,
					/obj/item/clothing/suit/armor/vest/marine/medium/nato,
					/obj/item/clothing/suit/armor/vest/marine/medium/nato)

/datum/supply_pack/nato/armor_h
	name = "X-12 Heavy Armor Pack"
	crate_name = "X-12 Heavy Armor Crate"
	desc = "One set of Lanchester Manufacturing-manufactured X-12 armor, sold at a discount to the Galactic Federation due to a recent contract."
	cost = 1250
	contains = list(/obj/item/clothing/suit/armor/vest/marine/heavy/nato,
					/obj/item/clothing/suit/armor/vest/marine/heavy/nato,
					/obj/item/clothing/suit/armor/vest/marine/heavy/nato)

/datum/supply_pack/nato/guns_low
	name = "Low Cal. Ballistics"
	crate_name = "Low Cal. Ballistics Crate"
	desc = "A set of basic low cal guns."
	cost = 2250
	contains = list(/obj/item/gun/ballistic/automatic/pistol/m1911/enforcer,
					/obj/item/gun/ballistic/derringer/traitor/nato,
					/obj/item/gun/ballistic/automatic/smg/vector/nato_vector)

/datum/supply_pack/nato/guns_assault
	name = "P16 Weapon"
	crate_name = "P16 Weapon Crate"
	desc = "A singular P16 Assault Rifle."
	cost = 2250
	contains = list(/obj/item/gun/ballistic/automatic/assualt/p16/nato_p16)

/datum/supply_pack/nato/guns_marksman
	name = "CM16 Weapon"
	crate_name = "CM16 Weapon Crate"
	desc = "A singular CM16 Marksman Rifle."
	cost = 2500
	contains = list(/obj/item/gun/ballistic/automatic/assualt/p16/nato_cm16)

/datum/supply_pack/nato/guns_shotgun
	name = "CM15 Weapon"
	crate_name = "CM15 Weapon Crate"
	desc = "A singular CM15 Combat Shotgun."
	cost = 2500
	contains = list(/obj/item/gun/ballistic/shotgun/automatic/bulldog/nato)

/datum/supply_pack/nato/guns_sniper
	name = "Ekho Weapon Pack"
	crate_name = "Ekho Weapon Crate"
	desc = "A singular Ekho Sniper Rifle."
	cost = 3500
	contains = list(/obj/item/gun/ballistic/automatic/sniper_rifle/ekho)

/datum/supply_pack/nato/hardsuit_basic
	name = "NATO Base Hardsuit"
	crate_name = "NATO Base Hardsuit Crate"
	desc = "A singular Basic NATO Hardsuits."
	cost = 2000
	contains = list(/obj/item/clothing/suit/space/hardsuit/natonavy)

/datum/supply_pack/nato/hardsuit_basic
	name = "NATO Advanced Hardsuit"
	crate_name = "NATO Advanced Hardsuit Crate"
	desc = "A singular Unit of an Advanced NATO Hardsuit."
	cost = 3500
	contains = list(/obj/item/clothing/suit/space/hardsuit/natonavy/elite)

/datum/supply_pack/nato/pistol_ammo
	name = "NATO Enforcer AMMO Pack"
	crate_name = "NATO Enforcer AMMO Crate"
	desc = "A set of 10 Enforcer Magazines."
	cost = 250
	contains = list(/obj/item/ammo_box/magazine/m45/nato_enforcer,
	/obj/item/ammo_box/magazine/m45/nato_enforcer,
	/obj/item/ammo_box/magazine/m45/nato_enforcer,
	/obj/item/ammo_box/magazine/m45/nato_enforcer,
	/obj/item/ammo_box/magazine/m45/nato_enforcer,
	/obj/item/ammo_box/magazine/m45/nato_enforcer,
	/obj/item/ammo_box/magazine/m45/nato_enforcer,
	/obj/item/ammo_box/magazine/m45/nato_enforcer,
	/obj/item/ammo_box/magazine/m45/nato_enforcer,
	/obj/item/ammo_box/magazine/m45/nato_enforcer
)

/datum/supply_pack/nato/revolver_ammo
	name = "NATO Koi AMMO Pack"
	crate_name = "NATO Koi AMMO Crate"
	desc = "A set of 10 Koi Magazines."
	cost = 250
	contains = list(/obj/item/ammo_box/a357,
	/obj/item/ammo_box/a357,
	/obj/item/ammo_box/a357,
	/obj/item/ammo_box/a357,
	/obj/item/ammo_box/a357,
	/obj/item/ammo_box/a357,
	/obj/item/ammo_box/a357,
	/obj/item/ammo_box/a357,
	/obj/item/ammo_box/a357,
	/obj/item/ammo_box/a357,
)

/datum/supply_pack/nato/smg_ammo
	name = "NATO Vector AMMO Pack"
	crate_name = "NATO Vector AMMO Crate"
	desc = "A set of 10 Vector Magazines."
	cost = 350
	contains = list(/obj/item/ammo_box/magazine/smgm9mm,
	/obj/item/ammo_box/magazine/smgm9mm,
	/obj/item/ammo_box/magazine/smgm9mm,
	/obj/item/ammo_box/magazine/smgm9mm,
	/obj/item/ammo_box/magazine/smgm9mm,
	/obj/item/ammo_box/magazine/smgm9mm,
	/obj/item/ammo_box/magazine/smgm9mm,
	/obj/item/ammo_box/magazine/smgm9mm,
	/obj/item/ammo_box/magazine/smgm9mm,
	/obj/item/ammo_box/magazine/smgm9mm
)

/datum/supply_pack/nato/p16_ammo
	name = "NATO P16 AMMO Pack"
	crate_name = "NATO P16 AMMO Crate"
	desc = "A set of 10 P16/CM-16 Magazines."
	cost = 450
	contains = list(/obj/item/ammo_box/magazine/p16,
	/obj/item/ammo_box/magazine/p16,
	/obj/item/ammo_box/magazine/p16,
	/obj/item/ammo_box/magazine/p16,
	/obj/item/ammo_box/magazine/p16,
	/obj/item/ammo_box/magazine/p16,
	/obj/item/ammo_box/magazine/p16,
	/obj/item/ammo_box/magazine/p16,
	/obj/item/ammo_box/magazine/p16,
	/obj/item/ammo_box/magazine/p16
)

/datum/supply_pack/nato/cm15_ammo
	name = "NATO CM15 AMMO Pack"
	crate_name = "NATO CM15 AMMO Crate"
	desc = "A set of 10 CM-15 Magazines."
	cost = 450
	contains = list(/obj/item/ammo_box/magazine/cm15_12g,
	/obj/item/ammo_box/magazine/cm15_12g,
	/obj/item/ammo_box/magazine/cm15_12g,
	/obj/item/ammo_box/magazine/cm15_12g,
	/obj/item/ammo_box/magazine/cm15_12g,
	/obj/item/ammo_box/magazine/cm15_12g,
	/obj/item/ammo_box/magazine/cm15_12g,
	/obj/item/ammo_box/magazine/cm15_12g,
	/obj/item/ammo_box/magazine/cm15_12g,
	/obj/item/ammo_box/magazine/cm15_12g
)

/datum/supply_pack/nato/ekho_ammo
	name = "NATO Ekho AMMO Pack"
	crate_name = "NATO Ekho AMMO Crate"
	desc = "A set of 5 Ekho Magazines."
	cost = 450
	contains = list(/obj/item/ammo_box/magazine/sniper_rounds/nato_ekho,
	/obj/item/ammo_box/magazine/sniper_rounds/nato_ekho,
	/obj/item/ammo_box/magazine/sniper_rounds/nato_ekho,
	/obj/item/ammo_box/magazine/sniper_rounds/nato_ekho,
	/obj/item/ammo_box/magazine/sniper_rounds/nato_ekho
)

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
