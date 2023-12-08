extends CharacterBody2D


@export var _speed : int = 300

func get_intput():
	look_at(get_global_mouse_position())
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * _speed

func _physics_process(delta):
	get_intput()
	move_and_slide()
