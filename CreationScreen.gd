extends Node2D
class_name CreationScreen

onready var sprite_load = get_node("sprite/sprite_load")
onready var sprite_input = get_node("sprite/sprite_input")
export var creation_type: String = "Null"

func _ready():
	sprite_load.connect("pressed", self, "_on_sprite_load_pressed")
	sprite_input.connect("file_selected", self, "_on_sprite_input_file_selected")
	$name/name_title.text = creation_type + " Name"

func _on_sprite_load_pressed():
	sprite_input.popup()

func _on_sprite_input_file_selected(path):
	var image = Image.new()
	image.load(path)
	var image_texture = ImageTexture.new()
	image_texture.create_from_image(image)
	$sprite/sprite.texture = image_texture
