extends Area2D

@onready var doors = $"../doors"
@onready var collision = $"../Door"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("cake"):
		doors.visible = false
		collision.remove_child($"../Door/CollisionShape2D")
		
