extends "res://Utils/state_machine/state.gd"

func get_class_name():
	return "player_state:moving"

func enter():
	print("start moving")
	print(owner.get_node(^"AnimationTree"))
	#owner.get_node(^"AnimationPlayer").play("walk")
	owner.get_node(^"AnimationTree")["parameters/conditions/is_idle"] = false
	owner.get_node(^"AnimationTree")["parameters/conditions/is_moving"] = true

func exit():
	print("exit moving")

func update(_delta):
	var input_direction:Vector2 = Common.get_input_direction()
	if input_direction.is_zero_approx():
		emit_signal("finished", "idle")
