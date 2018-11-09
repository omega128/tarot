extends Area2D

# this is a list of strings naming all the placeholder objects in the order they should be
# used in.
export(Array) var positions

# This store whether the current spread has been dealt or not.
var cards_dealt = false

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func _input_event(viewport, event, shape_idx):
	if event.is_action_pressed("ui_click"):
		if not cards_dealt:
			# wipe out all cards before starting over
			for x in get_tree().get_nodes_in_group("cards"):
				x.queue_free()
		
		_deal()

func _deal():
	# generate all possible cards as an array
	var the_deck = []
	for x in range(1, 79):
		the_deck.append(x)
	
	# shuffle the deck
	the_deck = _shuffleList(the_deck)	
	# GODOT 3.1 will support this: the_deck.shuffle()
	
	for placeholder in get_tree().get_nodes_in_group("placeholders"):
		var new_card = preload("res://cards/card.tscn").instance()
		
		new_card.value = the_deck.pop_front()
		new_card.position = placeholder.position
		
		$"..".add_child (new_card)



func _shuffleList(list):
    var shuffledList = []
    var indexList = range(list.size())
    for i in range(list.size()):
        randomize()
        var x = randi()%indexList.size()
        shuffledList.append(list[x])
        indexList.remove(x)
        list.remove(x)
    return shuffledList