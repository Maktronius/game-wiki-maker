extends Node2D
class_name Stat

# Called when the node enters the scene tree for the first time.
func _ready():
	$display_name.text = name
