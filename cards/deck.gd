extends Area2D

# this is a list of strings naming all the placeholder objects in the order they should be
# used in.
export var positions = []

# This store whether the current spread has been dealt or not.
var cards_dealt = false

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func _input_event(viewport, event, shape_idx):
	if event.is_action_pressed("ui_click"):
		if not cards_dealt:
			_deal()
		else:
			pass

func _deal():
	# cycle through each position, and spawn a card on that position.
	for pos in positions:
		print ("Hello?!")
		print ($pos.get_pos())
		#var new_card = preload("res://cards/card.tscn")
		
		#$".".add_child(new_card)

		#var dest = $pos.get_pos()
		#new_card.set_pos(dest)
		
	
#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
