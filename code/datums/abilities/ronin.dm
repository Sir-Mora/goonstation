mob/proc/make_ronin(mob/living/carbon/human/ronin_mob, var/robe = 0, var/vr = 0)
	if (!ishuman(ronin_mob)) return

	var/datum/abilityHolder/H = ronin_mob.add_ability_holder(/datum/abilityHolder/ronin)
	var/mob/living/carbon/human/M = src

	if (!ishuman(src))
		H.addAbility(/datum/targetable/spell/phaseshift)
		H.addAbility(/datum/targetable/spell/magicmissile)
		H.addAbility(/datum/targetable/spell/clairvoyance)
		M.set_mutantrace(/datum/mutantrace/ronin)




//////////////////////////////////////////// Ability holder /////////////////////////////////////////

/atom/movable/screen/ability/topBar/spell
	clicked(params)
		var/datum/targetable/spell/spell = owner
		var/datum/abilityHolder/holder = owner.holder

		if (!istype(spell))
			return
		if (!spell.holder)
			return

		if(params["shift"] && params["ctrl"])
			if(owner.waiting_for_hotkey)
				holder.cancel_action_binding()
				return
			else
				owner.waiting_for_hotkey = 1
				src.updateIcon()
				boutput(usr, "<span class='notice'>Please press a number to bind this ability to...</span>")
				return

		if (!isturf(usr.loc))
			return
		if (world.time < spell.last_cast)
			return
		if (spell.targeted && usr.targeting_ability == owner)
			usr.targeting_ability = null
			usr.update_cursor()
			return

		if (spell.targeted)
			usr.targeting_ability = owner
			usr.update_cursor()
		else
			SPAWN_DBG(0)
				spell.handleCast()

/datum/abilityHolder/ronin
	usesPoints = 0
	topBarRendered = 1
	tabName = "ronin"
