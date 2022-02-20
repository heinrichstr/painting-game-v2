extends KinematicBody2D

export (int) var speed = 200

var target = Vector2()
var velocity = Vector2()

func _ready():
	print(target)

func _unhandled_input(event):
	if event.is_action_pressed("user_click"):
		print("click")
		target = get_global_mouse_position()

func _physics_process(delta):
	velocity = position.direction_to(target) * speed
	# look_at(target)
	if position.distance_to(target) > 5:
		velocity = move_and_slide(velocity)
