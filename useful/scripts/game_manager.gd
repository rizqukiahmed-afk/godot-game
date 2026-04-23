extends Node

func _ready():
	await get_tree().create_timer(5.0).timeout
	get_tree().change_scene_to_file("res://useful/scenes/main.tscn")
