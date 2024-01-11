extends "res://Utils/state_machine/state_machine.gd"

@onready var idle: IState = $Idle
@onready var move: IState = $Move

func _ready():
	states_map = {
		"idle": idle,
		"move": move
	}
