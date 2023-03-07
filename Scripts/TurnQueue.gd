extends Node2D

class_name TurnQueue

var active_character

func initialize():	# needs to be called from another node
	active_character = get_child(0)

func play_turn():
	await active_character.act().completed	# completed will be a signal
	
func next_turn():
	var new_index : int = (active_character.get_index() + 1) % get_child_count()	# this will cycle thru character list
	active_character = get_child(new_index)
	print(active_character)
	
