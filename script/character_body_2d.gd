extends CharacterBody2D

@onready var sprite_2d: Sprite2D = $Sprite2D


const FRAME_IDLE: int = 0
const FRAME_MOVING: int = 1
const SPEED = 300.0
const JUMP_VELOCITY = -900
var push_force = 80.0

func _ready() -> void:
	# Connect to the global manager's signal
	SkinManager.skin_changed.connect(_on_skin_changed)
	
	# Load whatever skin is currently active in the manager
	var initial_skin = SkinManager.get_current_skin()
	if initial_skin:
		_on_skin_changed(initial_skin)


func _physics_process(delta: float) -> void:
	# 1. Add gravity if the player is in the air
	if not is_on_floor():
		velocity += get_gravity() * delta

	# 2. Handle jump input
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# 3. Get horizontal input direction (Left / Right axis)
	var direction := Input.get_axis("ui_left", "ui_right")
	
	# 4. Handle horizontal movement and update skin frames
	if direction:
		velocity.x = direction * SPEED
		sprite_2d.frame = FRAME_MOVING # Switch to your moving animation frame
		
		# Flip the sprite horizontally depending on which way they walk
		sprite_2d.flip_h = direction < 0
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		sprite_2d.frame = FRAME_IDLE # Switch back to your idle frame


	move_and_slide()

	for i in get_slide_collision_count():
		var c = get_slide_collision(i)
		if c.get_collider() is RigidBody2D:
			c.get_collider().apply_central_impulse(-c.get_normal() * push_force)
			
func _on_skin_changed(new_skin: SkinResource) -> void:
	if new_skin and new_skin.sprite_sheet:
		sprite_2d.texture = new_skin.sprite_sheet
