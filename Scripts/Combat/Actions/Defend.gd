extends Action

func execute(actor, target):
	print(actor.name + " is now defending!")
	actor.is_defending = true
	actor.animation_player.play("defend")
	await actor.animation_player.animation_finished
	action_finished.emit()
