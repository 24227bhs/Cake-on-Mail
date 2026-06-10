extends Area2D



func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("cake"):
		print("you win!")
		get_tree().change_scene_to_file('res://Scenes/restartui.tscn') 
		
