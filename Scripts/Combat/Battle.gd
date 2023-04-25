extends Node2D

class_name Battle

@onready var turn_queue = $TurnQueue

var battle_active = true

func _ready():
	#this starts the dialogic timeline, but idk if we want it here
	Dialogic.start_timeline('res://Timelines/test.dtl')
	
	turn_queue.initialize()
	# there are much better ways to do this

func _on_attack_pressed():
	if turn_queue.active_character.name == "Player" and battle_active:
		turn_queue.play_turn(turn_queue.active_character, turn_queue.get_child(1), "attack")	# stupid and temp

func _on_defend_pressed():
	if turn_queue.active_character.name == "Player" and battle_active:
		turn_queue.play_turn(turn_queue.active_character, turn_queue.active_character, "defend")

func _on_heal_pressed():
	if turn_queue.active_character.name == "Player" and battle_active:
		turn_queue.play_turn(turn_queue.active_character, turn_queue.active_character, "heal")

func end_battle():
	battle_active = false
	print("battle over")

func _on_button_pressed():	# debug
	get_tree().reload_current_scene()

