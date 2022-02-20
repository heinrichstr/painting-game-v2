extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	#set player position since its too dumb to do it itself
	$Player.target=$Player.position


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
