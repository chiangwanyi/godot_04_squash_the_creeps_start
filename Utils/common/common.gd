class_name Common

static func get_input_direction():
	var input_direction = Vector2(
			Input.get_axis(&"move_left", &"move_right"),
			Input.get_axis(&"move_up", &"move_down")
	)
	return input_direction
