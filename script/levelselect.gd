extends Control



func _on_testlevel_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/tutorial.tscn")


func _on_levelone_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/levelone.tscn")


func _on_leveltwo_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/leveltwo.tscn")
