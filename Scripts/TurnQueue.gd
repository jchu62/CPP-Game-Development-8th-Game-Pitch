extends Node2D

class_name TurnQueue

@onready var active_character : Combatant

func initialize():	# needs to be called from another node
	active_character = get_child(0)

func play_turn(actor : Combatant, target : Combatant, action_id : String):
	await active_character.act(active_character, target, action_id) # completed will be a signal
	next_turn()
	
func next_turn():
	var new_index : int = (active_character.get_index() + 1) % get_child_count()	# this will cycle thru character list
	active_character = get_child(new_index)
	print("Active character: " + str(active_character))
	active_character.start_turn(get_child(0))
	
func _on_child_exiting_tree(node):
	get_parent().end_battle()
