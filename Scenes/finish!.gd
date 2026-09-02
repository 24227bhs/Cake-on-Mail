extends Control
@onready var testlabel = $Label5
@onready var time = $MarginContainer/VBoxContainer/Label3
@onready var wawa = $Label4
@onready var GUI = $"."
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
	
	




func _on_level_select_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/levelselect.tscn")

func _on_main_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/mainmenu.tscn")


func _on_test_pressed() -> void:
	print("hello")
