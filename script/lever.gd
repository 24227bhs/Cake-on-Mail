extends Area2D

@onready var player = $"../player"
@onready var collision = $"../Latch"
@onready var latch = $"../latch"
var activated = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

#its uh broken (: plz fix )
func _on_area_entered(body: Area2D) -> void:
	print('working')
	activated = true
	latch.visible = false
	collision.remove_child($"../Latch/CollisionShape2D")
