extends Label


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var x = (360) / self.length()
	for i in range(0, self.length()):
		draw_set_transform(Vector2(0, 0), deg2rad(i * x - (self.length()/2*x)), Vector2(1,1))
		draw_char(font, Vector2(0, -30), self[self.length()-i-1], "", Color(0, 0, 0))


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
