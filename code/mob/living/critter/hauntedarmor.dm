/mob/living/critter/hauntedarmor
	name = "Haunted Armor"
	real_name = "Haunted Armor"
	desc = "A walking set of armor... huh... hey wait is that a sword?!"
	density = 1
	icon = 'icons/misc/critter.dmi'
	icon_state = "hauntedarmor"
	hand_count = 3
	can_throw = 1
	can_grab = 1
	can_disarm = 1
	blood_id = null
	speechverb_say = "states"
	speechverb_gasp = "states"
	speechverb_stammer = "states"
	speechverb_exclaim = "declares"
	speechverb_ask = "queries"
	metabolizes = 0

	death(var/gibbed)
		..(gibbed, 0)
		if (!gibbed)
			playsound(src.loc, "sound/impact_sounds/Slimy_Splat_1.ogg", 100, 1)
			make_cleanable(/obj/decal/cleanable/oil,src.loc)
			ghostize()
			qdel(src)
		else
			playsound(src.loc, "sound/impact_sounds/Slimy_Splat_1.ogg", 100, 1)
			make_cleanable(/obj/decal/cleanable/oil,src.loc)

	specific_emotes(var/act, var/param = null, var/voluntary = 0)
		switch (act)
			if ("scream")
				if (src.emote_check(voluntary, 50))
					playsound(src, "sound/voice/screams/martain_growl.ogg" , 80, 1, channel=VOLUME_CHANNEL_EMOTE)
					return "<b>[src]</b> screams!"
		return null

	specific_emote_type(var/act)
		switch (act)
			if ("scream")
				return 2
		return ..()

	setup_equipment_slots()
		equipment += new /datum/equipmentHolder/Sheath


	setup_hands()
		..()
		var/datum/handHolder/HH = hands[1]
		HH.limb = new /datum/limb
		HH.icon = 'icons/mob/hud_human.dmi'
		HH.icon_state = "handl"
		HH.name = "Armored Left Hand"
		HH.suffix ="-L"
		HH.limb_name = "Left arm"


		HH = hands[2]
		HH.limb = new /datum/limb
		HH.icon = 'icons/mob/hud_human.dmi'
		HH.icon_state = "handr"
		HH.name = "Armored Right Hand"
		HH.suffix ="-R"
		HH.limb_name = "Right arm"
		HH.item = new /obj/item/katana_sheath

	setup_healths()
		add_hh_robot(100, 1)
		add_hh_robot_burn(100, 1)

	get_melee_protection(zone, damage_type)
		return 6

	get_ranged_protection()
		return 2

	get_disorient_protection()
		return max(..(), 80)

	ne
