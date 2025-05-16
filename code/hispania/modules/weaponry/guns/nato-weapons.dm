// Pistolita (Falta añadir su cargador custom y que se aplique el sprite de cuando se queda sin balas)
/obj/item/gun/ballistic/automatic/pistol/m1911/enforcer
	name = "\improper NATO Enforcer"
	desc = "A modern .45 handgun with a small magazine capacity used by the NATO Navy. Modified to fit M1911 Magazines"
	icon = 'icons/hispania/obj/projectiles/projectile.dmi'
	icon_state = "enforcer_black"
	item_state = "enforcer_black"
	fire_sound_volume = 25

// Sniper
/obj/item/gun/ballistic/automatic/sniper_rifle
	name = "sniper rifle"
	desc = "An anti-materiel rifle chambered in .50 BMG, partnered with an effective optics package that grants it much greater range than most rifles. Its prodigious bulk requires both hands and some time to aim."
	icon_state = "sniper"
	item_state = "sniper"
	fire_sound = 'sound/weapons/gun/sniper/shot.ogg'
	fire_sound_volume = 90
	vary_fire_sound = FALSE
	load_sound = 'sound/weapons/gun/sniper/mag_insert.ogg'
	rack_sound = 'sound/weapons/gun/sniper/rack.ogg'
	suppressed_sound = 'sound/weapons/gun/general/heavy_shot_suppressed.ogg'
	recoil = 2
	weapon_weight = WEAPON_HEAVY
	mag_type = /obj/item/ammo_box/magazine/sniper_rounds
	fire_delay = 40
	burst_size = 1
	w_class = WEIGHT_CLASS_NORMAL
	zoomable = TRUE
	zoom_amt = 10 //Long range, enough to see in front of you, but no tiles behind you.
	zoom_out_amt = 5
	slot_flags = ITEM_SLOT_BACK
	actions_types = list()
	mag_display = TRUE

/obj/item/gun/ballistic/automatic/sniper_rifle/ekho
	name = "NATO Sniper Rifle"
	desc = "An old and reliable sniper design based on the Intervention, called Ekho, with suppression integrated. Quickscoping still doesn't work."
	fire_sound_volume = 25
	icon = 'icons/hispania/obj/projectiles/48x32guns.dmi'
	icon_state = "ekho"
	item_state = "ekho"
	zoom_amt = 15

// Rifle de asalto
/obj/item/gun/ballistic/automatic/assualt/p16
	name = "\improper P-16"
	desc = "A Night of Fire-era assault rifle pattern from Sol, chambered in 5.56mm. Rediscovered by the Colonial Minutemen and now frequently reproduced. A favorite of professional mercenaries and well-heeled pirates."
	icon = 'icons/obj/guns/48x32guns.dmi'
	fire_sound = 'sound/weapons/gun/rifle/m16.ogg'
	icon_state = "p16"
	item_state = "p16"
	mag_display = TRUE
	weapon_weight = WEAPON_MEDIUM
	w_class = WEIGHT_CLASS_BULKY
	slot_flags = ITEM_SLOT_BACK
	mag_type = /obj/item/ammo_box/magazine/p16

/obj/item/gun/ballistic/automatic/assualt/p16/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.2 SECONDS)

/obj/item/gun/ballistic/automatic/assualt/p16/nato_p16
	name = "\improper NATO P-16"
	desc = "An ancient rifle used by professional NATO soldiers. It is said that the P-16 and AK-47 were destined to be in combat against each other. Chambered in 5.56mm. Designed to be lighter"
	icon = 'icons/hispania/obj/projectiles/48x32guns.dmi'
	fire_sound_volume = 25
	icon_state = "nato-p16"
	item_state = "nato-p16"
	weapon_weight = WEAPON_LIGHT

// SMG
/obj/item/gun/ballistic/automatic/smg/vector/nato_vector
	name = "\improper NATO Vector carbine"
	desc = "A military police carbine based off of an SMG design, with most of the complex workings removed for reliability. Chambered in 9mm."
	icon = 'icons/hispania/obj/projectiles/projectile.dmi'
	icon_state = "nato-vector"
	item_state = "nato-vector"
	fire_sound_volume = 25

// Marksman Rifle
/obj/item/gun/ballistic/automatic/assualt/p16/nato_cm16
	name = "\improper NATO CM-16"
	desc = "A NATO manufactured rifle, heavily modified version of the P16 used in Marksman roles. It fires slower and has more zoom"
	icon = 'icons/hispania/obj/projectiles/48x32guns.dmi'
	icon_state = "nato-cm16"
	item_state = "nato-cm16"
	zoomable = TRUE
	zoom_amt = 10 //Long range, enough to see in front of you, but no tiles behind you.
	zoom_out_amt = 5
	fire_delay = 5

// Automatic Shotgun
/obj/item/gun/ballistic/shotgun/bulldog/minutemen/nato
	name = "NATO Combat Shotgun"
	desc = "A semi automatic shotgun with tactical furniture and a six-shell capacity underneath. Designed for the NATO forces"
	icon = 'icons/hispania/obj/projectiles/48x32guns.dmi'
	icon_state = "nato-cm15"
	item_state = "nato-cm15"

// Revolver
/obj/item/gun/ballistic/derringer/traitor/nato
	name = "NATO Koi Revolver"
	desc = "A easily concealable revolver, used and designed by the NATO forces. High tech ballistic design allows this to be chambered in .357 and .38 ammo"
	icon = 'icons/hispania/obj/projectiles/projectile.dmi'
	icon_state = "nato-mateba"
	item_state = "nato-mateba"
