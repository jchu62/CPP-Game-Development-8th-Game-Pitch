extends Node2D
class_name Combatant

@export var max_hp : int
@export var str : int	# temporary, there's a better way to do stats
@onready var health_label = $Health
@onready var animation_player = $AnimationPlayer

var current_hp
var is_defending = false

var actions = {}

func _ready():
	randomize()
	current_hp = max_hp
	health_label.set_text(str(current_hp))
	fill_actions_dict()
	print(actions)

func fill_actions_dict():
	for action in $Actions.get_actions():
		if "id" in action:
			actions[action.id] = action
			
func start_turn(target : Combatant):
	if is_defending:
		is_defending = false
	choose_action(target)
			
func choose_action(target : Combatant):
	pass

func take_damage(dmg):
	var remaining_hp = current_hp
	if (!is_defending):
		remaining_hp = current_hp - dmg
	if remaining_hp <= 0:
		remaining_hp = 0
		queue_free()
	current_hp = remaining_hp
	health_label.set_text(str(current_hp))

func act(actor : Combatant, target : Combatant, action_id : String):
	var action = actions[action_id]
	action.execute(actor, target)
	await action.action_finished
