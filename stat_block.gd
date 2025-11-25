extends Node2D


var stat_y = -24

# Called when the node enters the scene tree for the first time.
func _ready():
	for i in get_children():
		stat_y += 24
		i.position.y = stat_y
	var creation_button = CreationButton.new()
	creation_button.creation_type = "test"
	add_child(creation_button)
	creation_button.rect_position.y = stat_y + 24
