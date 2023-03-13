extends Combatant

func choose_action(target : Combatant):
	if current_hp != stats.HP:
		get_parent().play_turn(self, target, "attack")	# my condolences to my fellow coders
	else:
		get_parent().play_turn(self, self, "defend")
#	var action_ids = actions.keys()
#	var chosen_action = action_ids[randi() % action_ids.size()]
# Note: placeholder for pass
# Additional note: defend currently doesn't work for enemy
# Although if it did it would result in an infinite loop where you can't damage the enemy
# still its being used as a placeholder for pass right now
