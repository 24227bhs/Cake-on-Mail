extends Area2D

@onready var stopwatch = $"../player/speedrun timer"
@onready var finish = $"../player/finish!"
@onready var win = $"."
var won = false

func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("cake"):
		print("you win!")
		#get_tree().change_scene_to_file("res://Scenes/levelselect.tscn")
		won = true
		_wintrue()

func _wintrue():
	finish.show()
	stopwatch.transform.origin = Vector2(900, 130)
	get_tree().paused = true
