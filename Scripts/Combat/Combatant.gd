extends Node2D

@export var max_hp : int
var current_hp
@onready var health_label = $Health

func _ready():
	current_hp = max_hp
	health_label.set_text(str(current_hp))

func take_damage(dmg):
	var remaining_hp = current_hp - dmg
	if remaining_hp < 0:
		remaining_hp = 0
	current_hp = remaining_hp
	health_label.set_text(current_hp)
	
