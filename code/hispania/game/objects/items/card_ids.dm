#define ACCESS_NATO 550
#define ACCESS_NATO_BRIG 551
#define ACCESS_NATO_ARMORY 552
#define ACCESS_NATO_BRIDGE 553
#define ACCESS_NATO_COMMAND 554

/obj/item/card/id/nato
	name = "NATO ID Card"
	desc = "An access card widely utilized by NATO Military forces in the frontier."
	icon_state = "idnato"
	icon = 'icons/hispania/obj/card.dmi'
	access = list(ACCESS_NATO)
	uses_overlays = TRUE

/obj/item/card/id/nato/mp
	desc = "An access card widely utilized by NATO Military Police in the frontier."
	access = list(ACCESS_NATO, ACCESS_NATO_BRIG)
	icon_state = "idnatomp"


/obj/item/card/id/nato/mp/officer
	desc = "An access card widely utilized by NATO Specialists in the frontier."
	access = list(ACCESS_NATO, ACCESS_NATO_BRIG, ACCESS_NATO_ARMORY, ACCESS_NATO_BRIDGE)
	icon_state = "idnato1"


/obj/item/card/id/nato/mp/officer/high
	desc = "An access card widely utilized by NATO Officers in the frontier."
	access = list(ACCESS_NATO, ACCESS_NATO_BRIG, ACCESS_NATO_ARMORY, ACCESS_NATO_BRIDGE, ACCESS_NATO_COMMAND)
	icon_state = "idnato2"

/obj/item/card/id/nato/mp/officer/high/admiral
	desc = "An access card used by the sector NATO Admiral."
	icon_state = "syndie"
	access = list(ACCESS_NATO, ACCESS_NATO_BRIG, ACCESS_NATO_ARMORY, ACCESS_NATO_BRIDGE, ACCESS_NATO_COMMAND)
	icon_state = "idnato3"
