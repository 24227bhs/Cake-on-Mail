extends Area2D

var cake_node

func _ready() -> void:
	cake_node = get_parent().get_child(5)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	self.global_position = cake_node.global_position
	print(cake_node.global_position)
