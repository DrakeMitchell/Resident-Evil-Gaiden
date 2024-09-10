extends CharacterBody2D

class_name Player

const SPEED = 300.0

func _physics_process(delta):

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var directionLR = Input.get_axis("ui_left", "ui_right")
	if directionLR:
		velocity.x = directionLR * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	var directionUD = Input.get_axis("ui_up", "ui_down")
	if directionUD:
		velocity.y = directionUD * SPEED
	else:
		velocity.y = directionUD * SPEED

	move_and_slide()
