extends Action

func execute(actor, target):
	print("defend")
	target.is_defending = true
	actor.animation_player.play("defend")
	await actor.animation_player.animation_finished
	action_finished.emit()
# i have no idea if this actually works
