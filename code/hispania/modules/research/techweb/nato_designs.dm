// Defining flag for NATO Protolathes
#define DEPARTMENTAL_FLAG_NATO (1<<0)

// NATO Protolathe
/*
/obj/item/circuitboard/machine/protolathe/department/nato
	name = "Protolathe - NATO (Machine Board)"
	icon_state = "security"
	build_path = /obj/machinery/rnd/production/protolathe/department/nato

 /obj/machinery/rnd/production/protolathe/department/nato
	name = "Protolathe (NATO)"
	allowed_department_flags = DEPARTMENTAL_FLAG_NATO
	department_tag = "nato"
	circuit = /obj/item/circuitboard/machine/protolathe/department/nato
	categories = list(
								"Electronics",
								"Weapons",
								"Ammo",
								"Firing Pins",
								"NATO Armour",
								"NATO Ballistics",
								"NATO Misc",
								"NATO Clothing"
								)

*/

// NATO Tech Disks
/obj/item/disk/tech_disk/nato
	name = "\improper NATO Tech Disk"
	desc = "A disk containing basic NATO Technology."
	random_color = FALSE
	color = "#1100ff"
	custom_materials = null

/obj/item/disk/tech_disk/nato/Initialize()
	. = ..()
//	stored_research = new /datum/techweb_node/nato_basic_research


// Clothes
/datum/design/nato_fatigues
	name = "\improper NATO Navy Recruit Fatigues"
	desc = "Specialized combat uniform utilized by the NATO Navy serving the Galactic Federation. This uniform is usually used by joined forces aboard a NATO ship"
	id = "nfatigues"
	build_type = PROTOLATHE
	materials = list(/datum/material/plastic = 100)
	build_path = /obj/item/clothing/under/natonavy
	category = list("NATO Clothing")
	departmental_flags = DEPARTMENTAL_FLAG_NATO

/datum/design/nato_fatigues_formed
	name = "\improper NATO Navy Fatigue"
	desc = "Specialized combat uniform utilized by the NATO Navy serving the Galactic Federation. This one has higher rank markings than its regular fatigue counterpart."
	id = "nfatigues_f"
	build_type = PROTOLATHE
	materials = list(/datum/material/plastic = 100)
	build_path = /obj/item/clothing/under/natonavy/formed
	category = list("NATO Clothing")
	departmental_flags = DEPARTMENTAL_FLAG_NATO

/datum/design/nato_fatigues_mp
	name = "\improper NATO Navy MP Uniform"
	desc = "Specialized combat uniform utilized by the NATO Navy Military Police."
	id = "nfatigues_mp"
	build_type = PROTOLATHE
	materials = list(/datum/material/plastic = 100)
	build_path = /obj/item/clothing/under/natonavy/mp
	category = list("NATO Clothing")
	departmental_flags = DEPARTMENTAL_FLAG_NATO

/datum/design/nato_fatigues_spec
	name = "\improper NATO Navy Specialist Fatigues"
	desc = "Specialized combat uniform utilized by the NATO Navy Sub-Officers serving the Galactic Federation."
	id = "nfatigues_spec"
	build_type = PROTOLATHE
	materials = list(/datum/material/plastic = 100)
	build_path = /obj/item/clothing/under/natonavy/officer
	category = list("NATO Clothing")
	departmental_flags = DEPARTMENTAL_FLAG_NATO

/datum/design/nato_fatigues_officer
	name = "\improper NATO Navy Officer Fatigues"
	desc = "Specialized combat uniform utilized by the NATO Navy Officers serving the Galactic Federation. This one has additional insignia on its shoulders and cuffs."
	id = "nfatigues_officer"
	build_type = PROTOLATHE
	materials = list(/datum/material/plastic = 100)
	build_path = /obj/item/clothing/under/natonavy/officer_higher
	category = list("NATO Clothing")
	departmental_flags = DEPARTMENTAL_FLAG_NATO

/datum/design/nato_fatigues_admiral
	name = "\improper NATO Navy Admiral Uniform"
	desc = "Gold trim on space-black cloth, this uniform displays the rank of \"Admiral\". Worn exclusively by the NATO Navy Admiralty. It's got exotic materials for protection."
	id = "nfatigues_adm"
	build_type = PROTOLATHE
	materials = list(/datum/material/plastic = 100)
	build_path = /obj/item/clothing/under/natonavy/admiral
	category = list("NATO Clothing")
	departmental_flags = DEPARTMENTAL_FLAG_NATO

/datum/design/nato_beret
	name = "\improper NATO Specialist Beret"
	desc = "A beret made out of black reinforced fabric with the NATO insignia emblazoned on it. For officers with class."
	id = "nato_beret"
	build_type = PROTOLATHE
	materials = list(/datum/material/plastic = 100)
	build_path = /obj/item/clothing/head/beret/sec/nato
	category = list("NATO Clothing")
	departmental_flags = DEPARTMENTAL_FLAG_NATO

/datum/design/nato_beret_officer
	name = "\improper NATO Officer Beret"
	desc = "A beret made out of black reinforced fabric with the NATO insignia emblazoned on it. A symbol of excellence, a badge of courage, a mark of distinction."
	id = "nato_beret_off"
	build_type = PROTOLATHE
	materials = list(/datum/material/plastic = 100)
	build_path = /obj/item/clothing/head/beret/sec/nato
	category = list("NATO Clothing")
	departmental_flags = DEPARTMENTAL_FLAG_NATO

/datum/design/nato_hailer
	name = "\improper NATO Tactical Mask"
	desc = "A close-fitting tactical mask with an especially aggressive Cloaker-o-nator 420-69."
	id = "nato_hailer"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 250)
	build_path = /obj/item/clothing/mask/gas/sechailer/cloaker
	category = list("NATO Clothing")
	departmental_flags = DEPARTMENTAL_FLAG_NATO

/datum/design/nato_vest_m
	name = "NATO Standard Tactical Armor Vest"
	desc = "A standard Issue tactical armor vest for NATO Forces"
	id = "nato_vest_m"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 4500)
	build_path = /obj/item/clothing/suit/armor/vest/marine/medium/nato
	category = list("NATO Armour")
	departmental_flags = DEPARTMENTAL_FLAG_NATO

/datum/design/nato_vest_l
	name = "NATO Light Tactical Armor Vest"
	desc = "A light tactical armor vest for NATO Forces"
	id = "nato_vest_l"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 2500)
	build_path = /obj/item/clothing/suit/armor/vest/marine/nato
	category = list("NATO Armour")
	departmental_flags = DEPARTMENTAL_FLAG_NATO

/datum/design/nato_vest_h
	name = "NATO Standard Tactical Armor Vest"
	desc = "A heavy tactical armor vest for NATO Forces"
	id = "nato_vest_h"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 8500)
	build_path = /obj/item/clothing/suit/armor/vest/marine/heavy/nato
	category = list("NATO Armour")
	departmental_flags = DEPARTMENTAL_FLAG_NATO
