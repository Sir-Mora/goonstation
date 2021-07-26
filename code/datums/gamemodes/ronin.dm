/datum/game_mode/mixed/ronin //todo : 'horror' mode
	name = "ronin"
	config_tag = "ronin"
	latejoin_antag_compatible = 1
	latejoin_antag_roles = list("ronin")
	traitor_types = list("ronin")


	has_wizards = 0
	has_werewolves = 0
	has_blobs = 0

	num_enemies_divisor = 20

/datum/game_mode/mixed/ronin/announce()
	boutput(world, "<B>The current game mode is - ronin!</B>")
	boutput(world, "<B>Don't be scared!</B>")

