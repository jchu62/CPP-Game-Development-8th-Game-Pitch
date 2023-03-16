extends Action

func execute(actor, target):
	print(actor.name + " is now passing!")
	actor.animation_player.play("defend") # stupid placeholder but it works for now
	await actor.animation_player.animation_finished
	action_finished.emit()
