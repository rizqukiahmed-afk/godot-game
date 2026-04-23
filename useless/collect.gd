extends Area2D

@onready var main_manager: Node = $MainManager


func _on_body_entered(body: Node2D) -> void:
	if (body.name == "Testing"):
		var gm = get_tree().get_first_node_in_group("mainmanager")
		gm.add_score()
		queue_free()
