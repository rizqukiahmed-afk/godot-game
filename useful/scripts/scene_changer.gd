extends Area2D

@onready var panel: Panel = $"../PopUp/Panel"

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		get_tree().paused = true
		panel.show()


func _on_area_2d_body_exited(body: Node2D) -> void:
	if body.is_in_group("player"):
		get_tree().paused = false
		panel.hide()
