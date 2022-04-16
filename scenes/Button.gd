extends Button

var font = load('res://assets/fonts/roboto_slab.tres')

export var buttonString = "pill bottle"
var x = (110) / buttonString.length()
var showText = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _on_Button_mouse_entered():
	showText = true
	$"../AnimatedSprite".rotation_degrees = -15
	update()

func _on_Button_mouse_exited():
	showText = false
	$"../AnimatedSprite".rotation_degrees = 0
	update()

func _draw(): #draws text in a circle above the icon on hover
	if showText:
		for i in range(0, buttonString.length()):
			draw_set_transform(Vector2(50, 50), deg2rad(i * x - (buttonString.length()/2*x)), Vector2(1,1))
			draw_char(font, Vector2(-5, -60), buttonString[i], "", Color(0, 0, 0))


func _on_Button_pressed():
	print(buttonString, "--button pressed!")

