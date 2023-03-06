extends Node2D

class_name Battle

@onready var turn_queue = $TurnQueue

func _ready():
	turn_queue.initialize()
