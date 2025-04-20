extends CharacterBody2D

@export var speed: int = 200 # Pixels per second

# Called every frame. 'delta' is the time since last frame
func _physics_process(delta: float) ->void:
	var input_vector :=Vector2.ZERO
	
	#Checks for input(keyboard)
	if Input.is_action_pressed("ui_right"):
		input_vector.x +=1
	if Input.is_action_pressed("ui_left"):
		input_vector.x -=1
	if Input.is_action_pressed("ui_down"):
		input_vector.y +=1
	if Input.is_action_pressed("ui_up"):
		input_vector.y -=1
	
	# Normalize to prevent faster diagonal movement
	input_vector = input_vector.normalized()
	
	# Move the character
	velocity = input_vector * speed
	move_and_slide()
