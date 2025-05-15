// No Enlistados (gente que hace un apply sin ser de la faccion)
/datum/outfit/job/nato
	name = "NATO Navy Non-Enlisted"
	job_icon = "nato"
	jobtype = /datum/job/assistant

	faction_icon = "nato"
	r_pocket = /obj/item/radio
	l_pocket = /obj/item/pda
	belt = /obj/item/storage/belt/military

	uniform =  /obj/item/clothing/under/natonavy
	head = /obj/item/clothing/head/helmet/sec

	backpack = /obj/item/storage/backpack/security
	satchel = /obj/item/storage/backpack/satchel/cap
	duffelbag = /obj/item/storage/backpack/duffelbag/captain
	courierbag = /obj/item/storage/backpack/messenger/com

/datum/outfit/job/nato/post_equip(mob/living/carbon/human/H)
	var/obj/item/card/id/I = H.wear_id
	I.assignment = name
	I.access |= list(151)
	I.update_label()
	H.faction |= list(FACTION_PLAYER_MINUTEMAN)

/datum/outfit/job/solgov/post_equip(mob/living/carbon/human/H, visualsOnly)
	. = ..()
	if(visualsOnly)
		return
	H.faction |= list(FACTION_PLAYER_SOLCON)
	H.grant_language(/datum/language/solarian_international)

// Enlistados (Reclutas > Tropas > Unidades de combate > Soldados)
/datum/outfit/job/nato/enlisted
	name = "NATO Navy Enlisted"
	job_icon = "nato"
	jobtype = /datum/job/officer

	implants = list(/obj/item/implant/mindshield)
	ears = /obj/item/radio/headset/alt
	gloves = /obj/item/clothing/gloves/combat

	uniform = /obj/item/clothing/under/natonavy/formed
	head = /obj/item/clothing/head/beret/command


// Policia Militar (Sec, pero exclusiva de la nave)
/datum/outfit/job/nato/enlisted/mp
	name = "NATO Navy Military Police"
	job_icon = "natopol"
	jobtype = /datum/job/officer

	shoes = /obj/item/clothing/shoes/combat
	head = /obj/item/clothing/head/helmet/sec
	suit = /obj/item/clothing/suit/armor/vest
	belt = /obj/item/storage/belt/military/assault

	uniform = /obj/item/clothing/under/natonavy/mp

// Especialistas (X de combate > Especialista de X > Sargento > Sargento de Primera )
/datum/outfit/job/nato/enlisted/officer
	name = "NATO Navy Specialist"
	job_icon = "natosgt"

	implants = list(/obj/item/implant/mindshield)
	ears = /obj/item/radio/headset/alt
	gloves = /obj/item/clothing/gloves/combat

	uniform = /obj/item/clothing/under/natonavy/officer
	head = /obj/item/clothing/head/beret/command


// Subteniente > Teniente > Teniente Comandante
/datum/outfit/job/nato/enlisted/officer/higher_officer
	name = "NATO Navy Officer"
	job_icon = "natolieut"
	id = /obj/item/card/id/silver
	jobtype = /datum/job/hos

	implants = list(/obj/item/implant/mindshield)
	ears = /obj/item/radio/headset/alt
	gloves = /obj/item/clothing/gloves/combat
	backpack_contents = list(/obj/item/melee/classic_baton/telescopic=1)

	uniform = /obj/item/clothing/under/natonavy/officer_higher
	head = /obj/item/clothing/head/beret/command

// Captain (Condom)
/datum/outfit/job/nato/enlisted/officer/higher_officer/captain
	name = "NATO Navy Captain"
	job_icon = "natocpt"
	jobtype = /datum/job/captain

	implants = list(/obj/item/implant/mindshield)
	ears = /obj/item/radio/headset/alt
	gloves = /obj/item/clothing/gloves/combat

	uniform = /obj/item/clothing/under/natonavy/officer_higher
	head = /obj/item/clothing/head/beret/command
	id = /obj/item/card/id/gold

// Almirante :iseeyou:
/datum/outfit/job/nato/enlisted/officer/higher_officer/admiral
	name = "NATO Navy Admiral"
	job_icon = "natoadmiral"


	implants = list(/obj/item/implant/mindshield)
	ears = /obj/item/radio/headset/alt
	gloves = /obj/item/clothing/gloves/combat

	uniform = /obj/item/clothing/under/natonavy/admiral
	head = /obj/item/clothing/head/beret/command
