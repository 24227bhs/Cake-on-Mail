extends Control

@onready var skin_label: Label = $SkinLabel
@onready var preview_sprite: Sprite2D = $PreviewSprite # Added link to your new sprite

func _ready() -> void:
	_update_ui()

func _on_next_button_pressed() -> void:
	SkinManager.current_skin_index += 1
	_update_ui()

func _on_previous_button_pressed() -> void:
	SkinManager.current_skin_index -= 1
	_update_ui()

func _update_ui() -> void:
	var skin = SkinManager.get_current_skin()
	if skin:
		skin_label.text = skin.skin_name
		
		# Update the preview sprite texture to show the active skin!
		if skin.sprite_sheet:
			preview_sprite.texture = skin.sprite_sheet

func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/mainmenu.tscn")


func _on_prev_button_pressed() -> void:
	pass # Replace with function body.
