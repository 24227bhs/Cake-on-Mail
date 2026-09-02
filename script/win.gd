extends Area2D

@onready var stopwatch = $"../player/speedrun timer"
@onready var finish = $"../player/finish!"
@onready var win = $"."
var won = false

func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("cake"):
		print("you win!")
		won = true
		get_tree().change_scene_to_file("res://Scenes/finish!.tscn")
