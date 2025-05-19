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
	contains = list(/obj/item/clothing/suit/armor/vest/marine/nato,
					/obj/item/clothing/suit/armor/vest/marine/nato,
					/obj/item/clothing/suit/armor/vest/marine/nato)

/datum/supply_pack/nato/armor_m
	name = "X-11 Medium Armor Crate"
	desc = "One set of Lanchester Manufacturing-manufactured X-11 armor, sold at a discount to the Galactic Federation due to a recent contract."
	cost = 1250
	contains = list(/obj/item/clothing/suit/armor/vest/marine/medium/nato,
					/obj/item/clothing/suit/armor/vest/marine/medium/nato,
					/obj/item/clothing/suit/armor/vest/marine/medium/nato)

/datum/supply_pack/nato/armor_h
	name = "X-12 Heavy Armor Crate"
	desc = "One set of Lanchester Manufacturing-manufactured X-12 armor, sold at a discount to the Galactic Federation due to a recent contract."
	cost = 1250
	contains = list(/obj/item/clothing/suit/armor/vest/marine/heavy/nato,
					/obj/item/clothing/suit/armor/vest/marine/heavy/nato,
					/obj/item/clothing/suit/armor/vest/marine/heavy/nato)

/datum/supply_pack/nato/guns_low
	name = "Low Cal. Ballistics Crate"
	desc = "A set of basic low cal guns."
	cost = 2250
	contains = list(/obj/item/gun/ballistic/automatic/pistol/m1911/enforcer,
					/obj/item/gun/ballistic/automatic/pistol/m1911/enforcer,
					/obj/item/gun/ballistic/derringer/traitor/nato,
					/obj/item/gun/ballistic/derringer/traitor/nato,
					/obj/item/gun/ballistic/automatic/smg/vector/nato_vector,
					/obj/item/gun/ballistic/automatic/smg/vector/nato_vector)

/datum/supply_pack/nato/guns_assault
	name = "P16 Weapon Pack"
	desc = "A set of P16 Assault Rifles."
	cost = 4250
	contains = list(/obj/item/gun/ballistic/automatic/assualt/p16/nato_p16,
					/obj/item/gun/ballistic/automatic/assualt/p16/nato_p16,
					/obj/item/gun/ballistic/automatic/assualt/p16/nato_p16)

/datum/supply_pack/nato/guns_marksman
	name = "CM16 Weapon Pack"
	desc = "A set of CM16 Marksman Rifles."
	cost = 5500
	contains = list(/obj/item/gun/ballistic/automatic/assualt/p16/nato_cm16,
					/obj/item/gun/ballistic/automatic/assualt/p16/nato_cm16,
					/obj/item/gun/ballistic/automatic/assualt/p16/nato_cm16)

/datum/supply_pack/nato/guns_shotgun
	name = "CM15 Weapon Pack"
	desc = "A set of CM15 Combat Shotguns."
	cost = 4500
	contains = list(/obj/item/gun/ballistic/shotgun/bulldog/minutemen/nato,
					/obj/item/gun/ballistic/shotgun/bulldog/minutemen/nato,
					/obj/item/gun/ballistic/shotgun/bulldog/minutemen/nato)

/datum/supply_pack/nato/guns_sniper
	name = "Ekho Weapon Pack"
	desc = "A set of Ekho Sniper Rifles."
	cost = 4500
	contains = list(/obj/item/gun/ballistic/automatic/sniper_rifle/ekho,
					/obj/item/gun/ballistic/automatic/sniper_rifle/ekho,
					/obj/item/gun/ballistic/automatic/sniper_rifle/ekho)

/datum/supply_pack/nato/hardsuit_basic
	name = "NATO Base Hardsuit"
	desc = "A set of Basic NATO Hardsuits."
	cost = 6000
	contains = list(/obj/item/clothing/suit/space/hardsuit/natonavy,
					/obj/item/clothing/suit/space/hardsuit/natonavy,
					/obj/item/clothing/suit/space/hardsuit/natonavy)

/datum/supply_pack/nato/hardsuit_basic
	name = "NATO Advanced Hardsuit"
	desc = "A singular Unit of an Advanced NATO Hardsuit."
	cost = 7500
	contains = list(/obj/item/clothing/suit/space/hardsuit/natonavy/elite)

/datum/supply_pack/nato/pistol_ammo
	name = "NATO Enforcer AMMO Pack"
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
	desc = "A set of 10 Koi Magazines."
	cost = 250
	contains = list(/obj/item/ammo_box/magazine/internal/derr357,
	/obj/item/ammo_box/magazine/internal/derr357,
	/obj/item/ammo_box/magazine/internal/derr357,
	/obj/item/ammo_box/magazine/internal/derr357,
	/obj/item/ammo_box/magazine/internal/derr357,
	/obj/item/ammo_box/magazine/internal/derr357,
	/obj/item/ammo_box/magazine/internal/derr357,
	/obj/item/ammo_box/magazine/internal/derr357,
	/obj/item/ammo_box/magazine/internal/derr357,
	/obj/item/ammo_box/magazine/internal/derr357
)

/datum/supply_pack/nato/smg_ammo
	name = "NATO Vector AMMO Pack"
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
