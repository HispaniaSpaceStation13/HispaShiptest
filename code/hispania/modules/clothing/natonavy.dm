///////////////////////////////////////////////////////////////
/////////////////////// ** UNIFORMES ** ///////////////////////
// Uniforme, no-enlistados
/obj/item/clothing/under/natonavy
	name = "\improper NATO Navy Recruit Fatigues"
	desc = "Specialized combat uniform utilized by the NATO Navy serving the Galactic Federation. This uniform is usually used by joined forces aboard a NATO ship"
	icon = 'icons/hispania/obj/clothing/under/natonavy.dmi'
	mob_overlay_icon = 'icons/hispania/mob/clothing/under/natonavy.dmi'
	icon_state = "nato_fatigues"
	item_state = "nato_fatigues"
	armor = list("melee" = 15, "fire" = 30, "acid" = 30)
	strip_delay = 50

// Generalista enlistados, bajo rango
/obj/item/clothing/under/natonavy/formed
	name = "\improper NATO Navy Fatigue"
	desc = "Specialized combat uniform utilized by the NATO Navy serving the Galactic Federation. This one has higher rank markings than its regular fatigue counterpart."
	icon_state = "nato_fatigues"
	item_state = "nato_fatigues"

// Para la Policía Militar
/obj/item/clothing/under/natonavy/mp
	name = "\improper NATO Navy MP Uniform"
	desc = "Specialized combat uniform utilized by the NATO Navy Military Police."
	icon_state = "nato_mp"
	item_state = "nato_mp"

// Uniforme de especialista
/obj/item/clothing/under/natonavy/officer
	name = "\improper NATO Navy Specialist Fatigues"
	desc = "Specialized combat uniform utilized by the NATO Navy Sub-Officers serving the Galactic Federation."
	icon_state = "nato_officer"
	item_state = "nato_officer"

// Uniforme de altos mandos
/obj/item/clothing/under/natonavy/officer_higher
	name = "\improper NATO Navy Officer Fatigues"
	desc = "Specialized combat uniform utilized by the NATO Navy Officers serving the Galactic Federation. This one has additional insignia on its shoulders and cuffs."
	icon_state = "nato_higher_officer"
	item_state = "nato_higher_officer"

// Uniforme de Almirante
/obj/item/clothing/under/natonavy/admiral
	name = "\improper NATO Navy Admiral Uniform"
	desc = "Gold trim on space-black cloth, this uniform displays the rank of \"Admiral\". Worn exclusively by the NATO Navy Admiralty. It's got exotic materials for protection."
	icon_state = "nato_admiral"
	item_state = "nato_admiral"

///////////////////////////////////////////////////////////////
/////////////////////// ** MÁSCARAS ** ///////////////////////
/obj/item/clothing/mask/gas/sechailer/cloaker
	name = "\improper NATO Tactical Mask"
	desc = "A close-fitting tactical mask with an especially aggressive Cloaker-o-nator 420-69."
	icon = 'icons/hispania/obj/clothing/masks/masks.dmi'
	mob_overlay_icon = 'icons/hispania/mob/clothing/masks/mask.dmi'
	cooldown = 0
	var/phrase = 1
	actions_types = list(/datum/action/item_action/halt, /datum/action/item_action/selectphrase)
	var/phrase_list = list(

								"forums" 		= "NOW GO TO THE FORUMS AND CRY LIKE THE LITTLE BITCH YOU ARE!",
								"beep" 		= "WULULULULULULU!",
								"difficulty-tweak"			= "WE CALL THIS A DIFFICULTY TWEAK!",
								"celilitis"			= "I'M GONNA BEAT THE CELILITIS OUT OF YOU!",
								"corners"			= "NEXT TIME CHECK YOUR CORNERS!",
								"beated"			= "I BET YOU LET YOURSELF GET BEAT UP JUST TO HEAR WHAT I HAVE TO SAY",
								"pants"			= "YOU WEAR THIS SHIT IN YOUR PANTS PROUDLY LIKE A BADGE OF HONOR",
								"resisting"			= "YOU CALL THIS RESISTING ARREST? YOU ASKED FOR IT!",
								"cry"			= "NOW CRY FOR MOM TO CHANGE YOUR DIAPERS!",
								"expected"			= "I EXPECTED BETTER",
								"hitting-yourself"			= "STOP HITTING YOURSELF! STOP HITTING YOURSELF!",
								"im-late"			= "I know I know, I'm late",
								"meeting"			= "We gotta stop meeting like this you know?",
								"missed"			= "MISSED ME, DIDN'T YA?",
								"no-return"			= "THIS IS THE POINT OF NO RETURN!",
								"not-tough"			= "NOT SO TOUGH NOW, HUH?!",
								"speak-up"			= "SPEAK UP, I CANT HEAR YOU!",
								"s-word"			= "ALRIGHT, THE SAFE WORD IS 'POLICE BRUTALITY'",
								"wish-true"			= "SOMETIMES, WISHES DO COME TRUE",
								"work-smarter"			= "WORK SMARTER, NOT HARDER!"
								)
	icon_state = "cloaker"
	icon_state = "cloaker"

/datum/action/item_action/selectphrase
	name = "Change Phrase"

/datum/action/item_action/halt
	name = "HALT!"

/obj/item/clothing/mask/gas/sechailer/cloaker/ui_action_click(mob/user, actiontype)
	if(istype(actiontype, /datum/action/item_action/halt))
		halt()
	else if(istype(actiontype, /datum/action/item_action/selectphrase))
		var/key = phrase_list[phrase]
		var/message = phrase_list[key]

		phrase = (phrase < 20) ? (phrase + 1) : 1
		key = phrase_list[phrase]
		message = phrase_list[key]
		to_chat(user,"<span class='notice'>You set the restrictor to: [message]</span>")


/obj/item/clothing/mask/gas/sechailer/cloaker/verb/halt()
	set category = "Object"
	set name = "HALT"
	set src in usr
	if(!isliving(usr) || !can_use(usr))
		return

	// select phrase to play
	//play_phrase(usr, GLOB.hailer_phrases[select_phrase()])
	if(cooldown < world.time - 35)
		var/key = phrase_list[phrase]
		var/message = phrase_list[key]
		usr.visible_message("[usr]'s Cloaker-o-Nator: <font color='red' size='4'><b>[message]</b></font>")
		playsound(src, "sound/hispania/voice/hailer/cloaker/[key].ogg", 50, FALSE)
		cooldown = world.time


///////////////////////////////////////////////////////////////
/////////////////////// ** HARDSUITS ** ///////////////////////
// NATO Hardsuit
/obj/item/clothing/head/helmet/space/hardsuit/natonavy
	mob_overlay_icon = 'icons/hispania/mob/clothing/hats/helmets.dmi'
	icon = 'icons/hispania/obj/clothing/hats/helmets.dmi'
	icon_state = "hardsuit0-nato"
	item_state = "hardsuit0-nato"
	name = "NATO Navy Hardsuit Helmet"
	desc = "An advanced helmet designed for combat in a hazardous, low pressure environment. Shines with a high polish."
	hardsuit_type = "nato"
	armor = list("melee" = 40, "bullet" = 50, "laser" = 30, "energy" = 40, "bomb" = 35, "bio" = 100, "rad" = 50, "fire" = 50, "acid" = 90)

/obj/item/clothing/suit/space/hardsuit/natonavy
	mob_overlay_icon = 'icons/hispania/mob/clothing/suits/hardsuits.dmi'
	icon = 'icons/hispania/obj/clothing/suits/hardsuits.dmi'
	icon_state = "hardsuit0-nato"
	item_state = "hardsuit0-nato"
	name = "NATO Navy Hardsuit"
	desc = "An advanced suit designed for combat in a hazardous, low pressure environments. Shines with a high polish."
	hardsuit_type = "nato"
	armor = list("melee" = 40, "bullet" = 50, "laser" = 30, "energy" = 40, "bomb" = 35, "bio" = 100, "rad" = 50, "fire" = 50, "acid" = 90)
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/natonavy

// NATO Elite Hardsuit
/obj/item/clothing/head/helmet/space/hardsuit/natonavy/elite
	icon_state = "hardsuit0-natoelite"
	item_state = "hardsuit0-natoelite"
	name = "NATO Navy Elite Hardsuit Helmet"
	desc = "An elite version of the NATO helmet, with improved armour and fireproofing."
	hardsuit_type = "natoelite"
	armor = list("melee" = 60, "bullet" = 60, "laser" = 50, "energy" = 60, "bomb" = 55, "bio" = 100, "rad" = 70, "fire" = 100, "acid" = 100)

/obj/item/clothing/suit/space/hardsuit/natonavy/elite
	icon_state = "hardsuit0-natoelite"
	item_state = "hardsuit0-natoelite"
	name = "NATO Navy Elite Hardsuit"
	desc =  "An elite version of the NATO hardsuit, with improved armour and fireproofing."
	hardsuit_type = "natoelite"
	armor = list("melee" = 60, "bullet" = 60, "laser" = 50, "energy" = 60, "bomb" = 55, "bio" = 100, "rad" = 70, "fire" = 100, "acid" = 100)
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/natonavy/elite

//////////////////////////////////////////////////////////////////////
/////////////////////// ** BOINAS / CASCOS ** ///////////////////////
/obj/item/clothing/head/beret/sec/nato
	icon = 'icons/hispania/obj/clothing/hats/helmets.dmi'
	mob_overlay_icon = 'icons/hispania/mob/clothing/hats/helmets.dmi'
	name = "NATO Specialist Beret"
	desc = "A beret made out of navy blue reinforced fabric with the NATO insignia emblazoned on it. For officers with class."
	icon_state = "nato-beret"

/obj/item/clothing/head/beret/sec/nato/higher
	name = "NATO Officer Beret"
	desc = "A beret made out of black reinforced fabric with the NATO insignia emblazoned on it. A symbol of excellence, a badge of courage, a mark of distinction."
	icon_state = "nato-beret-off"

/obj/item/clothing/head/beret/sec/nato/cap
	name = "NATO Cap"
	desc = "A NATO Issued Cap."
	icon_state = "nato-cap"

///////////////////////////////////////////////////////////////
/////////////////////// ** CHALECOS ** ///////////////////////
/obj/item/clothing/suit/armor/vest/marine/medium/nato
	name = "NATO Standard Tactical Armor Vest"

/obj/item/clothing/suit/armor/vest/marine/nato
	name = "NATO Light Tactical Armor Vest"

/obj/item/clothing/suit/armor/vest/marine/heavy/nato
	name = "NATO Heavy Tactical Armor Vest"


///////////////////////////////////////////////////////////////
//////////////////////// ** RADIOS ** ////////////////////////
/obj/item/radio/headset/nato
	name = "NATO headset"
	desc = "A headset worn by members of the various NATO Forces on the frontier."
	icon_state = "solgov_headset"
	keyslot = new /obj/item/encryptionkey/solgov
	hearing_protection = TRUE

/obj/item/radio/headset/nato/officer
	name = "NATO Command headset"
	desc = "Worn by various officials and leaders from NATO. Fancy hat not included."
	icon_state = "solgov_headset_alt"
	keyslot2 = new /obj/item/encryptionkey/heads/captain
	command = TRUE

///////////////////////////////////////////////////////////////
//////////////////////// ** GAFAS ** ////////////////////////
/obj/item/clothing/glasses/hud/security/nato
	icon = 'icons/hispania/obj/clothing/eyes/glasses.dmi'
	mob_overlay_icon = 'icons/hispania/mob/clothing/eyes/glasses.dmi'
	name = "NATO Combat Goggles"
	desc = "Advanced combat goggles used by the NATO Forces."
	icon_state = "natogoggles"

/obj/item/clothing/glasses/hud/security/sunglasses/nato
	icon = 'icons/hispania/obj/clothing/eyes/glasses.dmi'
	mob_overlay_icon = 'icons/hispania/mob/clothing/eyes/glasses.dmi'
	name = "NATO HUD Sunglasses"
	desc = "Advanced sunglasses used by the NATO Forces."
	icon_state = "sunhudnato"
