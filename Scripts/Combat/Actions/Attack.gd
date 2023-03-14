extends Action

func execute(actor, target):
	print(actor.name + " attacks " + target.name + "!")
	target.take_damage(actor.stats.Strength)	# temp lol
	target.animation_player.play("take_damage")
	await target.animation_player.animation_finished
	action_finished.emit()
