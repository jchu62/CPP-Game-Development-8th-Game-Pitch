extends Node2D
class_name Combatant

@export var max_hp : int
@export var str : int	# temporary, there's a better way to do stats
@onready var health_label = $Health
var current_hp
var is_defending = false

var actions = {}

func _ready():
	current_hp = max_hp
	health_label.set_text(str(current_hp))
	fill_actions_dict()
	print(actions)

func fill_actions_dict():
	for action in $Actions.get_actions():
		if "id" in action:
			actions[action.id] = action

func take_damage(dmg):
	var remaining_hp = current_hp
	if (!is_defending):
		remaining_hp = current_hp - dmg
	if remaining_hp < 0:
		remaining_hp = 0
	current_hp = remaining_hp
	health_label.set_text(str(current_hp))

# don't forget to remove is_defending once turn is over

func act(target : Combatant, action_id : String):
	actions[action_id].execute(target)
	
