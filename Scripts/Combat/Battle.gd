extends Node2D

class_name Battle

@onready var turn_queue = $TurnQueue

func _ready():
	turn_queue.initialize()

func _on_attack_pressed():
	print("attack")

func _on_defend_pressed():
	print("defend")
