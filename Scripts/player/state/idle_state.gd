extends "res://Utils/state_machine/state.gd"

func get_class_name():
	return "player_state:idle"

func enter():
	print("start idle")
	owner.get_node(^"AnimationTree")["parameters/conditions/is_idle"] = true
	owner.get_node(^"AnimationTree")["parameters/conditions/is_moving"] = false
	#owner.get_node(^"AnimationPlayer").play("RESET")

func exit():
	print("exit idle")

func update(_delta):
	var input_direction = Common.get_input_direction()
	if input_direction:
		emit_signal("finished", "move")
