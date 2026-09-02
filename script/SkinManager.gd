extends Node

# Signal emitted whenever the skin is changed
signal skin_changed(new_skin: SkinResource)

# Array to store your created SkinResource files (.tres)
var available_skins: Array[SkinResource] = [
	preload("res://skins/regularderg.tres"),
	preload("res://skins/coolhatderg.tres"),
	preload("res://skins/glitchedderg.tres"),
	preload("res://skins/goldenderg.tres"),
]


var current_skin_index: int = 0:
	set(value):
		if available_skins.size() > 0:
			# If the index goes below 0, wrap around to the last item in the list
			if value < 0:
				current_skin_index = available_skins.size() - 1
			# If the index goes past the end of the array, loop back to 0
			elif value >= available_skins.size():
				current_skin_index = 0
			else:
				current_skin_index = value
				
			skin_changed.emit(get_current_skin())


func get_current_skin() -> SkinResource:
	if available_skins.size() > 0:
		return available_skins[current_skin_index]
	return null
