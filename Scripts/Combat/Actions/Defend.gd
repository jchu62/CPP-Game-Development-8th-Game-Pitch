extends Node

@export var id : String

func execute(target):
	print("defend")
	target.is_defending = true
# i have no idea if this actually works
