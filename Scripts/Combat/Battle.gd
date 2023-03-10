extends Node2D

class_name Battle

@onready var turn_queue = $TurnQueue

func _ready():
	turn_queue.initialize()

func _on_attack_pressed():
	print("attack")
	if turn_queue.active_character.name == "Player":
		turn_queue.active_character.act(turn_queue.get_child(1), "attack")

func _on_defend_pressed():
	print("defend")
