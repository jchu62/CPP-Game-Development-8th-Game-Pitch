extends Action

func execute(actor, target):
	print(actor.name + " is now passing!")
	action_finished.emit()
# CURRENTLY DOES NOT WORK RIGHT NOW
