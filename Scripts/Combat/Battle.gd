extends Node2D

class_name Battle

@onready var turn_queue = $TurnQueue

func _ready():
	turn_queue.initialize()
	
# there are much better ways to do this

func _on_attack_pressed():
	print("attack")
	if turn_queue.active_character.name == "Player":
		turn_queue.play_turn(turn_queue.get_child(1), "attack")	# stupid and temp

func _on_defend_pressed():
	print("defend")
	if turn_queue.active_character.name == "Player":
		turn_queue.play_turn(turn_queue.active_character, "defend")
