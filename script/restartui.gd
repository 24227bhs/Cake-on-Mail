extends CanvasLayer

@onready var pause = $"../"


func _on_restart_pressed() -> void:
	get_tree().change_scene_to_file('res://Scenes/physics_prototype_2.tscn') 


func _on_menu_pressed() -> void:
	get_tree().change_scene_to_file('res://Scenes/mainmenu.tscn') 
