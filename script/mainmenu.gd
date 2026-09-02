extends Control



func _on_play_pressed() -> void:
	get_tree().change_scene_to_file('res://Scenes/levelone.tscn')

func _on_quit_pressed() -> void:
	get_tree().quit()


func _on_level_select_pressed() -> void:
	get_tree().change_scene_to_file('res://Scenes/levelselect.tscn')


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file('res://Scenes/skin_menu.tscn')
