extends Combatant

func choose_action(target : Combatant):
	get_parent().play_turn(target, "attack")	# my condolences to my fellow coders
