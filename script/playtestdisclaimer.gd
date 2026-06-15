extends Control

func _on_accept_pressed() -> void:
	hide()
	


func _on_deny_pressed() -> void:
	get_tree().quit()
