extends Node2D
class_name BestiaryUnit

onready var stat_block = get_node("stat_block")
onready var skill_set = get_node("skill_set")

export var edit_mode := false

func _ready():
	pass # Replace with function body.

func createStat(stat_name):
	var new_stat = Stat.new()
	new_stat.name = stat_name
	stat_block.add_child(new_stat)

func createSkill(skill_name, type, desc):
	var new_skill = Skill.new()
	new_skill.name = skill_name
	skill_set.add_child(new_skill)
