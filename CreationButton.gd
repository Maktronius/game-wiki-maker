extends Button
class_name CreationButton

export var creation_type: String = "Null"


func _ready():
	self.connect("pressed", self, "_on_creation_button_pressed")
	
func _on_creation_button_pressed():
	var new_creation = preload("res://CreationScreen.tscn").instance()
	# var new_creation = CreationScreen.new()
	new_creation.creation_type = creation_type
	get_parent().add_child(new_creation)
