extends CharacterBody2D

@export var speed = 400

func get_input():
	if Input.is_action_just_pressed("reset"):
		position = Vector2(0, 0)
	else:
		var input_direction = Input.get_vector("left", "right", "up", "down")
		velocity = input_direction * speed

func _physics_process(delta):
	get_input()
	move_and_slide()
