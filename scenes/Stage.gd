extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	#set player position since its too dumb to do it itself
	$Player.target=$Player.position

func _unhandled_input(event): #run if no UI nodes selected
	if event.is_action_pressed("user_click"):
		var path = $Navigation2D.get_simple_path($Player.position, event.position)
		$Line2D.points = path
		$Player.path = path

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
