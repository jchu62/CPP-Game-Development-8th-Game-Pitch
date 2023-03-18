extends Action

func execute(actor, target):
	if actor.stats.SP < 5:
		print(actor.name + " does not have enough SP...")
		actor.choose_action(target)
		return
	print(actor.stats.SP)
	print(actor.name + " heals!")
	actor.stats.SP -= 5
	actor.heal(5)
	actor.animation_player.play("defend") #really stupid placeholder but it works
	await actor.animation_player.animation_finished
	action_finished.emit()
