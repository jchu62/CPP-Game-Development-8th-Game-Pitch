extends Node

@export var id : String			# it would probably be smarter to make an "Action" node in the future

func execute(target):
	target.take_damage(1)	# temp lol
