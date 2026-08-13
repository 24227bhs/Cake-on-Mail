extends Area2D

@onready var player = $"../player"
@onready var collision = $"../Latch"
@onready var latch = $"../latch"
var activated = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

#its uh broken (: plz fix )
func _on_body_entered(body: CharacterBody2D) -> void:	
		activated = true
		latch.visible = false
		collision.remove_child($"../Latch/CollisionShape2D")
