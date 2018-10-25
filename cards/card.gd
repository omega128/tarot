extends Area2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

const BACK_FACE = 0

var value = 1
var flipped = true

func flip():
	if flipped:
		$Sprite.frame = value
		flipped = false
	else:
		$Sprite.frame = BACK_FACE
		flipped = true
		
func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	$Sprite.frame = value # BACK_FACE

func _input(event):
	if event is InputEventMouseButton \
	   and event.button_index == BUTTON_LEFT \
	   and event.is_pressed():
		flip()
		