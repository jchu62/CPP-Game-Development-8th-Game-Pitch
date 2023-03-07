extends Node2D
class_name Combatant

@export var max_hp : int
@export var str : int	# temporary, there's a better way to do stats
@onready var health_label = $Health
var current_hp

func _ready():
	current_hp = max_hp
	health_label.set_text(str(current_hp))

func take_damage(dmg):
	var remaining_hp = current_hp - dmg
	if remaining_hp < 0:
		remaining_hp = 0
	current_hp = remaining_hp
	health_label.set_text(current_hp)

func act(target : Combatant, action):
	action.execute(target)
	
# the idea is to have actions under a child node of the combatant
# which has its own children that represent the actions themselves
# of course we can temporarily just shove actions into an array
# but i like to overthink problems so all i have is this half-
# finished thing 
# if you see this and want to finish it, have fun! LOL
# but i intend to finish this soon so if you dont want to dw abt it
