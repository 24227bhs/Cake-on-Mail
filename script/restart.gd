extends Node2D

@onready var restartui: CanvasLayer = $restartui
var paused = false
var won = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_action_just_pressed("pause"):
		pauseMenu()

func pauseMenu():
	if paused:
		restartui.hide()
		Engine.time_scale = 1
	else:
		restartui.show()
		Engine.time_scale = 0
		
	paused = !paused
