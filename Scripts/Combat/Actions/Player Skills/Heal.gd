extends Action

func execute(actor, target):
	print(actor.name + " heals!")
	actor.heal(5)
