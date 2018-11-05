extends Button

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

func _on_celtic_cross_clicked():
	get_tree().change_scene("res://spreads/celtic.tscn")
	
func _on_star_spread_clicked():
	pass
	
func _on_three_card_spread_clicked():
	pass
	
func _on_single_card_spread_clicked():
	pass

