extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var value = 1
var flipped = true

const BACK_FACE = 0

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	$".".frame = BACK_FACE

func flip():
	if flipped:
		$".".frame = value
		flipped = false
	else:
		$".".frame = BACK_FACE
		flipped = true

func _input(event):
	if event is InputEventMouseButton:
		flip()

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
