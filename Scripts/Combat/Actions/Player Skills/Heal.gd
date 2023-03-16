extends Action

func execute(actor, target):
	print(actor.name + " heals!")
	actor.heal(5)
	actor.animation_player.play("defend") #really stupid placeholder but it works
	await actor.animation_player.animation_finished
	action_finished.emit()
