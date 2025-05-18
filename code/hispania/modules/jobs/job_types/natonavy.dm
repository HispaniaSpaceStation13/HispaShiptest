// Listado de miembros que pertenecen al high ranking de la NATO
/proc/LoadNATOMembers()
	var/list/members = list()
	var/text = file2text("config/nato_members.txt")
	if (!text)
		world.log << "Failed to load NATO members list!"
		return members
	for (var/line in splittext(text, "\n"))
		line = trim(line)
		if (line)
			members += line
	return members

// No Enlistados (gente que hace un apply sin ser de la faccion)
/datum/outfit/job/nato
	name = "NATO Navy Non-Enlisted"
	job_icon = "nato"
	jobtype = /datum/job/assistant
	id = /obj/item/card/id/nato

	faction_icon = "nato"
	r_pocket = /obj/item/radio
	l_pocket = /obj/item/pda
	belt = /obj/item/storage/belt/military/assault
	ears = /obj/item/radio/headset/nato

	uniform =  /obj/item/clothing/under/natonavy
	head = /obj/item/clothing/head/helmet/sec
	glasses = /obj/item/clothing/glasses/hud/security/sunglasses

	backpack = /obj/item/storage/backpack/satchel/sec
	box = /obj/item/storage/box/survival
	shoes = /obj/item/clothing/shoes/jackboots

/datum/outfit/job/nato/post_equip(mob/living/carbon/human/H, visualsOnly)
	. = ..()
	if(visualsOnly)
		return
	H.faction |= list(FACTION_PLAYER_SOLCON)
	H.grant_language(/datum/language/solarian_international)
	assign_access_nonenlisted(H)

/datum/outfit/job/nato/proc/assign_access_nonenlisted(mob/living/carbon/human/H)
	var/obj/item/card/id/I = H.get_idcard()
	if(I)
		I.access |=list(ACCESS_NATO)

// Enlistados (Reclutas > Tropas > Unidades de combate > Soldados)
/datum/outfit/job/nato/enlisted
	name = "NATO Navy Enlisted"
	job_icon = "nato"
	jobtype = /datum/job/officer

	implants = list(/obj/item/implant/mindshield)
	gloves = /obj/item/clothing/gloves/combat
	suit = /obj/item/clothing/suit/armor/vest/marine/nato/

	uniform = /obj/item/clothing/under/natonavy/formed
	head = /obj/item/clothing/head/beret/command

/datum/outfit/job/nato/enlisted/post_equip(mob/living/carbon/human/H, visualsOnly)
	. = ..()
	if(visualsOnly)
		return
	H.faction |= list(FACTION_PLAYER_SOLCON)
	H.grant_language(/datum/language/solarian_international)
	assign_access_enlisted(H)

/datum/outfit/job/nato/enlisted/proc/assign_access_enlisted(mob/living/carbon/human/H)
	var/obj/item/card/id/I = H.get_idcard()
	if(I)
		I.access |=list(ACCESS_NATO)


// Policia Militar (Sec, pero exclusiva de la nave)
/datum/outfit/job/nato/enlisted/mp
	name = "NATO Navy Military Police"
	job_icon = "natopol"
	jobtype = /datum/job/officer
	id = /obj/item/card/id/nato/mp


	shoes = /obj/item/clothing/shoes/combat
	head = /obj/item/clothing/head/helmet/sec
	suit = /obj/item/clothing/suit/armor/vest
	belt = /obj/item/storage/belt/military/assault

	uniform = /obj/item/clothing/under/natonavy/mp

/datum/outfit/job/nato/enlisted/mp/post_equip(mob/living/carbon/human/H, visualsOnly)
	. = ..()
	if(visualsOnly)
		return
	H.faction |= list(FACTION_PLAYER_SOLCON)
	H.grant_language(/datum/language/solarian_international)
	assign_access_mp(H)

/datum/outfit/job/nato/enlisted/proc/assign_access_mp(mob/living/carbon/human/H)
	var/obj/item/card/id/I = H.get_idcard()
	if(I)
		I.access |=list(ACCESS_NATO, ACCESS_NATO_BRIG)

// Especialistas (X de combate > Especialista de X > Sargento > Sargento de Primera )
/datum/outfit/job/nato/enlisted/officer
	name = "NATO Navy Specialist"
	job_icon = "natosgt"
	id = /obj/item/card/id/nato/mp/officer

	implants = list(/obj/item/implant/mindshield)
	gloves = /obj/item/clothing/gloves/combat
	suit = /obj/item/clothing/suit/armor/vest/marine/medium/nato

	uniform = /obj/item/clothing/under/natonavy/officer
	head = /obj/item/clothing/head/beret/command

/datum/outfit/job/nato/enlisted/officer/post_equip(mob/living/carbon/human/H, visualsOnly)
	. = ..()
	if(visualsOnly)
		return
	H.faction |= list(FACTION_PLAYER_SOLCON)
	H.grant_language(/datum/language/solarian_international)
	assign_access_spec(H)

/datum/outfit/job/nato/enlisted/officer/proc/assign_access_spec(mob/living/carbon/human/H)
	var/obj/item/card/id/I = H.get_idcard()
	if(I)
		I.access |=list(ACCESS_NATO, ACCESS_NATO_BRIG, ACCESS_NATO_ARMORY, ACCESS_NATO_BRIDGE)

// Subteniente > Teniente > Teniente Comandante
/datum/outfit/job/nato/enlisted/officer/higher_officer
	name = "NATO Navy Officer"
	job_icon = "natolieut"
	id = /obj/item/card/id/nato/mp/officer/high
	jobtype = /datum/job/hos

	implants = list(/obj/item/implant/mindshield)
	ears = /obj/item/radio/headset/nato/officer
	gloves = /obj/item/clothing/gloves/combat
	backpack_contents = list(/obj/item/melee/classic_baton/telescopic=1)
	suit = /obj/item/clothing/suit/armor/vest/marine/nato/

	uniform = /obj/item/clothing/under/natonavy/officer_higher
	head = /obj/item/clothing/head/beret/sec/nato

/datum/outfit/job/nato/enlisted/officer/higher_officer/post_equip(mob/living/carbon/human/H, visualsOnly)
	. = ..()
	if(visualsOnly)
		return
	H.faction |= list(FACTION_PLAYER_SOLCON)
	H.grant_language(/datum/language/solarian_international)
	assign_access_officer(H)

/datum/outfit/job/nato/enlisted/officer/higher_officer/proc/assign_access_officer(mob/living/carbon/human/H)
	var/obj/item/card/id/I = H.get_idcard()
	if(I)
		I.access |=list(ACCESS_NATO, ACCESS_NATO_BRIG, ACCESS_NATO_ARMORY, ACCESS_NATO_BRIDGE, ACCESS_NATO_COMMAND)


// Captain (Condom)
/datum/outfit/job/nato/enlisted/officer/higher_officer/captain
	name = "NATO Navy Captain"
	job_icon = "natocpt"
	jobtype = /datum/job/captain

	implants = list(/obj/item/implant/mindshield)
	gloves = /obj/item/clothing/gloves/combat

	uniform = /obj/item/clothing/under/natonavy/officer_higher
	head = /obj/item/clothing/head/beret/sec/nato/higher

/datum/outfit/job/nato/enlisted/officer/higher_officer/captain/post_equip(mob/living/carbon/human/H, visualsOnly)
	. = ..()
	if(visualsOnly)
		return
	H.faction |= list(FACTION_PLAYER_SOLCON)
	H.grant_language(/datum/language/solarian_international)
	assign_access_captain(H)

/datum/outfit/job/nato/enlisted/officer/higher_officer/captain/proc/assign_access_captain(mob/living/carbon/human/H)
	var/obj/item/card/id/I = H.get_idcard()
	if(I)
		I.access |=list(ACCESS_NATO, ACCESS_NATO_BRIG, ACCESS_NATO_ARMORY, ACCESS_NATO_BRIDGE, ACCESS_NATO_COMMAND)

// Almirante :iseeyou:
/datum/outfit/job/nato/enlisted/officer/higher_officer/captain/admiral
	name = "NATO Navy Admiral"
	job_icon = "natoadmiral"
	id = /obj/item/card/id/nato/mp/officer/high/admiral
	uniform = /obj/item/clothing/under/natonavy/admiral


/datum/outfit/job/nato/enlisted/officer/higher_officer/captain/admiral/post_equip(mob/living/carbon/human/H, visualsOnly)
	. = ..()
	if(visualsOnly)
		return
	H.faction |= list(FACTION_PLAYER_SOLCON)
	H.grant_language(/datum/language/solarian_international)
	assign_access_admiral(H)

/datum/outfit/job/nato/enlisted/officer/higher_officer/captain/admiral/proc/assign_access_admiral(mob/living/carbon/human/H)
	var/obj/item/card/id/I = H.get_idcard()
	if(I)
		I.access |=list(ACCESS_NATO, ACCESS_NATO_BRIG, ACCESS_NATO_ARMORY, ACCESS_NATO_BRIDGE, ACCESS_NATO_COMMAND)
