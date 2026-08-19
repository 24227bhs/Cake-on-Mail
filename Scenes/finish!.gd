extends CanvasLayer
@onready var testlabel = $Label5
@onready var time = $MarginContainer/VBoxContainer/Label3
@onready var wawa = $Label4
@onready var leveltext = $MarginContainer/VBoxContainer/Label2
#@onready var stopwatch = $"../speedrun timer"
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	testlabel.text = "the code can work"
#	time.text = stopwatch
	wawa.text = str(testlabel.text)
	leveltext.text = name
