/datum/outfit/job/syndicate/assistant/descorp
	name = "Descorp - Junior Agent"
	id_assignment = "Junior Agent"
	jobtype = /datum/job/assistant
	job_icon = "assistant"

	uniform = /obj/item/clothing/under/syndicate/tacticool
	alt_uniform = null

	shoes = /obj/item/clothing/shoes/jackboots
	gloves = null
	ears = /obj/item/radio/headset
	back = /obj/item/storage/backpack

	id = /obj/item/card/id/syndicate_command/crew_id

/datum/outfit/job/syndicate/assistant/descorp/agent
	name = "Agent"
	id_assignment = "Agent"
	job_icon = "assistant"

	uniform = /obj/item/clothing/under/syndicate/tacticool
	alt_uniform = null

	shoes = /obj/item/clothing/shoes/jackboots
	gloves = null
	ears = /obj/item/radio/headset
	back = /obj/item/storage/backpack

	id = /obj/item/card/id/syndicate_command/crew_id


//Service

/datum/outfit/job/syndicate/bartender/descorp
	name = "Descorp - Bartender"
	jobtype = /datum/job/bartender
	job_icon = "bartender"

	id = /obj/item/card/id/syndicate_command/crew_id
	head = /obj/item/clothing/head/HoS/beret/syndicate
	glasses = /obj/item/clothing/glasses/sunglasses/reagent
	uniform = /obj/item/clothing/under/rank/civilian/bartender
	alt_uniform = /obj/item/clothing/under/rank/civilian/bartender/purple
	alt_suit = /obj/item/clothing/suit/apron/purple_bartender
	suit = /obj/item/clothing/suit/armor/vest
	backpack_contents = list(/obj/item/storage/box/beanbag=1)
	shoes = /obj/item/clothing/shoes/laceup

/datum/outfit/job/syndicate/bartender/descorp/andromeda
	name = "Bartender"
	job_icon = "bartender"

	id = /obj/item/card/id/syndicate_command/crew_id
	head = /obj/item/clothing/head/HoS/beret/syndicate
	glasses = /obj/item/clothing/glasses/sunglasses/reagent
	uniform = /obj/item/clothing/under/rank/civilian/bartender
	alt_uniform = /obj/item/clothing/under/rank/civilian/bartender/purple
	alt_suit = /obj/item/clothing/suit/apron/purple_bartender
	suit = /obj/item/clothing/suit/armor/vest
	backpack_contents = list(/obj/item/storage/box/beanbag=1)
	shoes = /obj/item/clothing/shoes/laceup
//Engineering

/datum/outfit/job/syndicate/engineer/descorp
	name = "Descorp - Ship Technician"
	id_assignment = "Ship Technician"
	jobtype = /datum/job/engineer
	job_icon = "stationengineer"

	id = /obj/item/card/id/syndicate_command/crew_id
	uniform = /obj/item/clothing/under/syndicate
	alt_uniform = null
	accessory = /obj/item/clothing/accessory/armband/engine
	glasses = /obj/item/clothing/glasses/sunglasses
	shoes = /obj/item/clothing/shoes/jackboots

	backpack = /obj/item/storage/backpack/industrial
	satchel = /obj/item/storage/backpack/satchel/eng
	duffelbag = /obj/item/storage/backpack/duffelbag/engineering
	courierbag = /obj/item/storage/backpack/messenger/engi


/datum/outfit/job/syndicate/engineer/descorp/combat
	name = "Combat Engineer"
	id_assignment = "Engineer"
	jobtype = /datum/job/engineer
	job_icon = "engineer"

	uniform = /obj/item/clothing/under/syndicate
	alt_uniform = null
	shoes = /obj/item/clothing/shoes/jackboots
	gloves = /obj/item/clothing/gloves/color/black
	ears = /obj/item/radio/headset
	back = /obj/item/storage/backpack

	belt = /obj/item/storage/belt/utility/full/engi
	head = /obj/item/clothing/head/hardhat/dblue


//Medbay

/datum/outfit/job/syndicate/doctor/descorp
	name = "Descorp - Medical Doctor"
	jobtype = /datum/job/doctor
	job_icon = "medicaldoctor"

	uniform = /obj/item/clothing/under/syndicate
	id = /obj/item/card/id/syndicate_command/crew_id
	shoes = /obj/item/clothing/shoes/jackboots
	alt_suit = /obj/item/clothing/suit/apron/surgical
	box = /obj/item/storage/box/survival/medical
	backpack = /obj/item/storage/backpack/medic
	satchel = /obj/item/storage/backpack/satchel/med
	duffelbag = /obj/item/storage/backpack/duffelbag/syndie/med
	courierbag = /obj/item/storage/backpack/messenger/med

/datum/outfit/job/syndicate/doctor/descorp/medic
	name = " Medical Doctor"
	jobtype = /datum/job/doctor
	job_icon = "medicaldoctor"

	uniform = /obj/item/clothing/under/syndicate
	id = /obj/item/card/id/syndicate_command/crew_id
	shoes = /obj/item/clothing/shoes/jackboots
	alt_suit = /obj/item/clothing/suit/apron/surgical
	box = /obj/item/storage/box/survival/medical
	backpack = /obj/item/storage/backpack/medic
	satchel = /obj/item/storage/backpack/satchel/med
	duffelbag = /obj/item/storage/backpack/duffelbag/syndie/med
	courierbag = /obj/item/storage/backpack/messenger/med

//Sience


//Security

/datum/outfit/job/syndicate/security/descorp
	name = "Descorp - Marine"
	id_assignment = "Marine"
	jobtype = /datum/job/officer
	job_icon = "securityofficer"

	uniform = /obj/item/clothing/under/syndicate/combat
	gloves = /obj/item/clothing/gloves/combat
	back = /obj/item/storage/backpack
	id = /obj/item/card/id/syndicate_command/crew_id

	ears = /obj/item/radio/headset/alt
	gloves = /obj/item/clothing/gloves/color/black
	shoes = /obj/item/clothing/shoes/combat

/datum/outfit/job/syndicate/security/descorp/marine
	name = "Marine"
	id_assignment = "Marine"
	jobtype = /datum/job/officer
	job_icon = "securityofficer"

	uniform = /obj/item/clothing/under/syndicate/combat
	gloves = /obj/item/clothing/gloves/combat
	back = /obj/item/storage/backpack
	id = /obj/item/card/id/syndicate_command/crew_id

	ears = /obj/item/radio/headset/alt
	gloves = /obj/item/clothing/gloves/color/black
	shoes = /obj/item/clothing/shoes/combat

//Command

/datum/outfit/job/syndicate/captain/descorp
	name = "Descorp - Captain"
	jobtype = /datum/job/captain
	job_icon = "captain"

	id = /obj/item/card/id/syndicate_command/captain_id
	ears = /obj/item/radio/headset/syndicate/alt/captain
	uniform = /obj/item/clothing/under/syndicate/suns/captain
	shoes = /obj/item/clothing/shoes/jackboots
	head = /obj/item/clothing/head/HoS/syndicate
	gloves = /obj/item/clothing/gloves/combat
	suit = /obj/item/clothing/suit/armor/vest/capcarapace/syndicate

	backpack = /obj/item/storage/backpack/security
	satchel = /obj/item/storage/backpack/satchel/sec
	duffelbag = /obj/item/storage/backpack/duffelbag/sec
	courierbag = /obj/item/storage/backpack/messenger/sec

/datum/outfit/job/syndicate/captain/lieutenant
	name = "Descorp - Corvette Lieutenant"
	id_assignment = "Corvette Lieutenant"
	job_icon = "lieutenant"

	uniform = /obj/item/clothing/under/syndicate/tacticool
	mask = /obj/item/clothing/mask/gas/syndicate/voicechanger
	id = /obj/item/card/id/syndicate_command/lieutenant
	ears = /obj/item/radio/headset/syndicate/alt/captain
	gloves = /obj/item/clothing/gloves/combat
	shoes = /obj/item/clothing/shoes/combat

	implants = list(/obj/item/implant/weapons_auth)

/datum/outfit/job/syndicate/captain/descorp/andromeda
	name = "Captain"
	id_assignment = "Captain"
	job_icon = "captain"

	id = /obj/item/card/id/syndicate_command/captain_id
	ears = /obj/item/radio/headset/syndicate/alt/captain
	uniform = /obj/item/clothing/under/syndicate/suns/captain
	shoes = /obj/item/clothing/shoes/jackboots
	head = /obj/item/clothing/head/HoS/syndicate
	gloves = /obj/item/clothing/gloves/combat
	suit = /obj/item/clothing/suit/armor/vest/capcarapace/syndicate



// HoS
/datum/outfit/job/syndicate/hos/descorp
	name = "Descorp - Head of Security"
	jobtype = /datum/job/hos
	job_icon = "headofsecurity"

	ears = /obj/item/radio/headset/syndicate/alt
	gloves = /obj/item/clothing/gloves/combat
	uniform = /obj/item/clothing/under/syndicate/combat
	head = /obj/item/clothing/head/HoS/syndicate
	suit = /obj/item/clothing/suit/armor/vest/syndie
	id = /obj/item/card/id/syndicate_command/crew_id
	shoes = /obj/item/clothing/shoes/combat
	glasses = /obj/item/clothing/glasses/hud/security/sunglasses

/datum/outfit/job/syndicate/hos/descorp/sergeant
	name = "Descorp - Sergeant"
	id_assignment = "First Sergeant"
	job_icon = "headofsecurity"

	ears = /obj/item/radio/headset/syndicate/alt
	gloves = /obj/item/clothing/gloves/combat
	uniform = /obj/item/clothing/under/syndicate/combat
	head = /obj/item/clothing/head/HoS/syndicate
	suit = /obj/item/clothing/suit/armor/vest/syndie
	id = /obj/item/card/id/syndicate_command/crew_id
	shoes = /obj/item/clothing/shoes/combat
	glasses = /obj/item/clothing/glasses/hud/security/sunglasses

/datum/outfit/job/syndicate/hos/descorp/firstofficer
	name = "First Officer"
	id_assignment = "First Officer"
	job_icon = "headofsecurity"

	ears = /obj/item/radio/headset/syndicate/alt
	gloves = /obj/item/clothing/gloves/combat
	uniform = /obj/item/clothing/under/syndicate/combat
	head = /obj/item/clothing/head/HoS/syndicate
	suit = /obj/item/clothing/suit/armor/vest/syndie
	id = /obj/item/card/id/syndicate_command/crew_id
	shoes = /obj/item/clothing/shoes/combat
	glasses = /obj/item/clothing/glasses/hud/security/sunglasses

