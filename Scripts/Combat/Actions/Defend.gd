extends Action

func execute(actor, target):
	target.is_defending = true
	actor.animation_player.play("defend")
	await actor.animation_player.animation_finished
	action_finished.emit()
