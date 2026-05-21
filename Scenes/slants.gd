extends StaticBody2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("slant left"):
		rotate(45)
	if Input.is_action_just_pressed("slant right"):
		rotate(-45)
