extends StaticBody2D

@export var rotation_speed: float = 2.0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var input_direction: float = 0.0
	
	if Input.is_action_pressed("slant left"):
		input_direction += 1.0
	if Input.is_action_pressed("slant right"):
		input_direction -= 1.0
	rotate(input_direction * rotation_speed * delta)
