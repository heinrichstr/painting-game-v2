extends Button

var font = load('res://assets/fonts/dancing_script.tres')
var myString = "pill bottle"
var x = (110) / myString.length()
var showText = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _on_Button_mouse_entered():
	showText = true
	update()

func _on_Button_mouse_exited():
	showText = false
	update()

func _draw(): #draws text in a circle above the icon on hover
	if showText:
		for i in range(0, myString.length()):
			draw_set_transform(Vector2(50, 50), deg2rad(i * x - (myString.length()/2*x)), Vector2(1,1))
			draw_char(font, Vector2(-5, -60), myString[i], "", Color(0, 0, 0))
