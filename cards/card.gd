extends Area2D

# We need to track which card this is.
export var value = 1

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var flipped = true

# The BACK_FACE value is the back of the card.
const BACK_FACE = 0

# Flip the card to show or hide its value.
func flip():
	if flipped:
		$Sprite.frame = value
		flipped = false
	else:
		$Sprite.frame = BACK_FACE
		flipped = true

# By default, the card should show the back when its created.
func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	$Sprite.frame = BACK_FACE

# TODO: Animate card flipping
func _input_event(viewport, event, shape_idx):
	if event.is_action_pressed("ui_click"):
		flip()
