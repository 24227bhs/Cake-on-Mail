extends CharacterBody2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("slant left"):
		get_parent().rotate(1)
	if Input.is_action_pressed("slant right"):
		get_parent().rotate(-1)
